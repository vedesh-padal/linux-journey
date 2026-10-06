# Journey Cheat Sheet

How the logging and note-taking helpers in this repo work.
## What each file does

| File | Purpose | In git? |
| ---- | ------- | :-----: |
| `journey.zsh` | The helper functions (`newday`, `lday`, `lpick`, `lkeep`) | yes |
| `_template.md` | Template copied into each new `notes.md` | yes |
| `README.md` | Progress table | yes |
| `days/day_XX/notes.md`, `commands.sh` | My notes and curated commands | yes |
| `raw/` | Automatic logs of everything I typed (private, messy) | **no** (gitignored) |
| `days/*/scratch/` | Throwaway lab files | **no** (gitignored) |

## Commands

| Command | What it does |
| ------- | ------------ |
| `newday N` | Creates `days/day_NN/` with a notes template, starts logging, and `cd`s into it |
| `lday N` | Starts logging to `raw/day_NN.log` (use to resume a day in a new terminal) |
| `lday off` | Stops logging in the current terminal |
| `lpick N` | Opens the picker with that day's successful commands; prints your selection |
| `lkeep N` | Picker, then asks for a comment on each selected command, then saves to `days/day_NN/commands.sh` |
| `grep -v ' rc=0 ' raw/day_NN.log` | Shows that day's failed commands (good material for "What broke") |

Logging is per terminal. Open a new terminal and you must run `lday N` again.
A command starting with a space is never logged.

## Picker keys (fzf)

| Key | Action |
| --- | ------ |
| `Tab` | Mark or unmark the highlighted command |
| `Enter` | Confirm the marked commands, then type a comment for each (Enter alone skips the comment) |
| `Esc` | Cancel |
| Type text | Filter the list |

## Daily flow

```bash
newday N          # start
# ...practice...
lkeep N           # pick + comment the keepers (10 min)
# edit days/day_NN/notes.md (own words + "What broke")
git add -A && git commit -m "day NN: topic" && git push
# tick the day in README.md
lday off
```

Weekly (Sunday): reread the week's "What broke" sections and re-run some commands from memory.

## Setting up on a new machine

```bash
sudo apt install zsh fzf git
git clone <your-repo-url> ~/path/to/linux-journey
echo '[[ -f ~/path/to/linux-journey/journey.zsh ]] && source ~/path/to/linux-journey/journey.zsh' >> ~/.zshrc
mkdir -p ~/path/to/linux-journey/raw
source ~/.zshrc
```

Then set `JOURNEY_DIR` at the top of `journey.zsh` to the clone location (or use the auto-detect line below).

Optional: replace the `JOURNEY_DIR` line in `journey.zsh` with this so the repo works from any location
without editing:

```zsh
export JOURNEY_DIR="${${(%):-%x}:A:h}"
```

## Troubleshooting

| Problem | Check |
| ------- | ----- |
| `command not found: newday` | `source ~/.zshrc`; check the `source` line points at the real `journey.zsh` path |
| Nothing gets logged | `echo $JOURNAL_LOG` is empty, so run `lday N` in this terminal |
| `no log for day N` | You haven't logged that day yet, or you used a different day number |
| Picker shows nothing | No successful (`rc=0`) commands logged yet that day |
| Old behaviour after editing `journey.zsh` | `source ~/.zshrc` again; make sure `grep -c 'lkeep()' journey.zsh` prints `1` |
| Prompt hooks interfere (wrong `rc`) | The logger must run first in `precmd_functions`; keep that line in `journey.zsh` |

## Safety

- `raw/` can contain tokens, passwords typed inline, and IPs. It stays gitignored.
- Before pushing, skim `commands.sh` for secrets.
- Run risky days (firewall, SSH hardening, disks, LVM/RAID) in a VM, not on the host laptop.