# linux-journey helpers (sourced from ~/.zshrc)
export JOURNEY_DIR="$HOME/VedeshPadal/Learning/DevOps/linux-journey"

autoload -Uz add-zsh-hook
typeset -g _jcmd=""

_j_preexec() { _jcmd="$1" }
_j_precmd() {
  local rc=$?                                   # must stay the first line
  [[ -z $JOURNAL_LOG || -z $_jcmd ]] && return
  [[ $_jcmd == " "* ]] && { _jcmd=""; return }  # leading space = don't log
  print -r -- "$(date '+%F %T') rc=$rc ${PWD/#$HOME/~} | $_jcmd" >> "$JOURNAL_LOG"
  _jcmd=""
}
add-zsh-hook preexec _j_preexec
precmd_functions=(_j_precmd $precmd_functions)  # run first so $? isn't clobbered

lday() {            # lday 5 → start logging Day 05; lday off → stop
  [[ $1 == off ]] && { unset JOURNAL_LOG; echo "logging off"; return; }
  local d=$(printf "%02d" "$1")
  mkdir -p "$JOURNEY_DIR/raw"
  export JOURNAL_LOG="$JOURNEY_DIR/raw/day_$d.log"
  echo "logging → $JOURNAL_LOG"
}

newday() {          # newday 5 → create day folder, start logging, cd in
  local d=$(printf "%02d" "$1") dir="$JOURNEY_DIR/days/day_$(printf "%02d" "$1")"
  mkdir -p "$dir/scratch"
  [[ -f $dir/notes.md ]] || sed "s/{{DAY}}/$d/" "$JOURNEY_DIR/_template.md" > "$dir/notes.md"
  touch "$dir/commands.sh"
  lday "$1" && cd "$dir"
}

lpick() {           # lpick 5 → fzf multi-select of successful commands (prints selection)
  local d=$(printf "%02d" "$1")
  grep -F ' rc=0 ' "$JOURNEY_DIR/raw/day_$d.log" \
    | sed 's/^[^|]*| //' | awk '!seen[$0]++' | fzf -m --tac
}

lkeep() {           # lkeep 5 → pick commands, comment each, save to day_05/commands.sh
  local d=$(printf "%02d" "$1") note cmd picked
  local log="$JOURNEY_DIR/raw/day_$d.log"
  local out="$JOURNEY_DIR/days/day_$d/commands.sh"
  [[ -f $log ]] || { echo "no log for day $d (looked for $log)"; return 1; }
  mkdir -p "${out:h}"
  picked=$(lpick "$1") || { echo "cancelled"; return 1; }   # Esc cancels
  [[ -z $picked ]] && { echo "nothing selected"; return 1; }
  local -a picks=("${(@f)picked}")                          # one array item per line
  for cmd in $picks; do
    echo; echo "▶ $cmd"
    read -r "note?   comment (Enter to skip): "
    { [[ -n $note ]] && print -r -- "# $note"; print -r -- "$cmd"; print; } >> "$out"
  done
  echo "saved → $out"
}