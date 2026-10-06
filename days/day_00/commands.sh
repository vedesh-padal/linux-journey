# to create a day entry in the linux-journey repo, to track progress with an automated script and functions that load via .zshrc
newday 0

pwd

ls

# to see the journal log path of this session after running `lday XX`
cat $JOURNAL_LOG

# this is how you start logging commands of a day, they keep getting appended into raw/day_XX.log file of that day
lday 0

ls -lah

