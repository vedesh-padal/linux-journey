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

lpick() {           # lpick 5 >> commands.sh → multi-select successful commands
  local d=$(printf "%02d" "$1")
  grep -F ' rc=0 ' "$JOURNEY_DIR/raw/day_$d.log" \
    | sed 's/^[^|]*| //' | awk '!seen[$0]++' | fzf -m --tac
}
