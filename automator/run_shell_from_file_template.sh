# at Automator
# Action : Run Shell Script
# Shell : /bin/zsh 
# Pass imputs : as arguments 
# - 
LOG_FILE="$HOME/tmp/log.txt"
SCRIPT_FILE="/Volumes/snk-hdd/Dropbox/home/projects/cookbook/templates_samples/shell_scripts/lorem_ipsum_output.sh"

# log the date-time of execution
date "+%Y%m%d_%H%M%S" >> "$LOG_FILE"

# log the imput parameters
echo "$@" >> "$LOG_FILE"

"$SCRIPT_FILE" "$@"
