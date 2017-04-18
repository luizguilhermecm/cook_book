
http://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
Usage

Specific tput sub-commands are discussed later.

Direct

Call tput as part of a sequence of commands:

tput setaf 1; echo "this is red text"
Use ; instead of && so if tput errors the text still shows.

Shell variables

Another option is to use shell variables:

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}red text ${E.green}green text${reset}"
tput produces character sequences that are interpreted by the terminal as having a special meaning. They will not be shown themselves. Note that they can still be saved into files or processed as input by programs other than the terminal.

Command substitution

It may be more convenient to insert tput's output directly into your echo strings using command substitution:

echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"
Example

The above command produces this on Ubuntu:

Screenshot of colour terminal text

Foreground & background colour commands

tput setab [1-7] # Set the background colour using ANSI escape
tput setaf [1-7] # Set the foreground colour using ANSI escape
Colours are as follows:

Num  Colour    #define         R G B

0    black     COLOR_BLACK     0,0,0
1    red       COLOR_RED       1,0,0
2    green     COLOR_GREEN     0,1,0
3    yellow    COLOR_YELLOW    1,1,0
4    blue      COLOR_BLUE      0,0,1
5    magenta   COLOR_MAGENTA   1,0,1
6    cyan      COLOR_CYAN      0,1,1
7    white     COLOR_WHITE     1,1,1
There are also non-ANSI versions of the colour setting functions (setb instead of setab, and setf instead of setaf) which use different numbers, not given here.

Text mode commands

tput bold    # Select bold mode
tput dim     # Select dim (half-bright) mode
tput smul    # Enable underline mode
tput rmul    # Disable underline mode
tput rev     # Turn on reverse video mode
tput smso    # Enter standout (bold) mode
tput rmso    # Exit standout mode
Cursor movement commands

tput cup Y X # Move cursor to screen postion X,Y (top left is 0,0)
tput cuf N   # Move N characters forward (right)
tput cub N   # Move N characters back (left)
tput cuu N   # Move N lines up
tput ll      # Move to last line, first column (if no cup)
tput sc      # Save the cursor position
tput rc      # Restore the cursor position
tput lines   # Output the number of lines of the terminal
tput cols    # Output the number of columns of the terminal
Clear and insert commands

tput ech N   # Erase N characters
tput clear   # Clear screen and move the cursor to 0,0
tput el 1    # Clear to beginning of line
tput el      # Clear to end of line
tput ed      # Clear to end of screen
tput ich N   # Insert N characters (moves rest of line forward!)
tput il N    # Insert N lines
Other commands

tput sgr0    # Reset text format to the terminal's default
tput bel     # Play a bell
With compiz wobbly windows, the bel command makes the terminal wobble for a second to draw the user's attention.

Scripts

tput accepts scripts containing one command per line, which are executed in order before tput exits.

Avoid temporary files by echoing a multiline string and piping it:

echo -e "setf 7\nsetb 1" | tput -S  # set fg white and bg red
See also

See man 1 tput
See man 5 terminfo for the complete list of commands and more details on these options. (The corresponding tput command is listed in the Cap-name column of the huge table that starts at line 81.)
