Help Files
______


Getting Started ~
|usr_01.txt|  About the manuals
|usr_02.txt|  The first steps in Vim
|usr_03.txt|  Moving around
|usr_04.txt|  Making small changes
|usr_05.txt|  Set your settings
|usr_06.txt|  Using syntax highlighting
|usr_07.txt|  Editing more than one file
|usr_08.txt|  Splitting windows
|usr_09.txt|  Using the GUI
|usr_10.txt|  Making big changes
|usr_11.txt|  Recovering from a crash
|usr_12.txt|  Clever tricks

Editing Effectively ~
|usr_20.txt|  Typing command-line commands quickly
|usr_21.txt|  Go away and come back
|usr_22.txt|  Finding the file to edit
|usr_23.txt|  Editing other files
|usr_24.txt|  Inserting quickly
|usr_25.txt|  Editing formatted text
|usr_26.txt|  Repeating
|usr_27.txt|  Search commands and patterns
|usr_28.txt|  Folding
|usr_29.txt|  Moving through programs
|usr_30.txt|  Editing programs
|usr_31.txt|  Exploiting the GUI
|usr_32.txt|  The undo tree

Tuning Vim ~
|usr_40.txt|  Make new commands
|usr_41.txt|  Write a Vim script
|usr_42.txt|  Add new menus
|usr_43.txt|  Using filetypes
|usr_44.txt|  Your own syntax highlighted
|usr_45.txt|  Select your language

Making Vim Run ~
|usr_90.txt|  Installing Vim


REFERENCE MANUAL: These files explain every detail of Vim.	*reference_toc*

General subjects ~
|intro.txt|	general introduction to Vim; notation used in help files
|help.txt|	overview and quick reference (this file)
|helphelp.txt|	about using the help files
|index.txt|	alphabetical index of all commands
|help-tags|	all the tags you can jump to (index of tags)
|howto.txt|	how to do the most common editing tasks
|tips.txt|	various tips on using Vim
|message.txt|	(error) messages and explanations
|quotes.txt|	remarks from users of Vim
|todo.txt|	known problems and desired extensions
|develop.txt|	development of Vim
|debug.txt|	debugging Vim itself
|uganda.txt|	Vim distribution conditions and what to do with your money

Basic editing ~
|starting.txt|	starting Vim, Vim command arguments, initialisation
|editing.txt|	editing and writing files
|motion.txt|	commands for moving around
|scroll.txt|	scrolling the text in the window
|insert.txt|	Insert and Replace mode
|change.txt|	deleting and replacing text
|indent.txt|	automatic indenting for C and other languages
|undo.txt|	Undo and Redo
|repeat.txt|	repeating commands, Vim scripts and debugging
|visual.txt|	using the Visual mode (selecting a text area)
|various.txt|	various remaining commands
|recover.txt|	recovering from a crash

Advanced editing ~
|cmdline.txt|	Command-line editing
|options.txt|	description of all options
|pattern.txt|	regexp patterns and search commands
|map.txt|	key mapping and abbreviations
|tagsrch.txt|	tags and special searches
|quickfix.txt|	commands for a quick edit-compile-fix cycle
|windows.txt|	commands for using multiple windows and buffers
|tabpage.txt|	commands for using multiple tab pages
|syntax.txt|	syntax highlighting
|spell.txt|	spell checking
|diff.txt|	working with two to four versions of the same file
|autocmd.txt|	automatically executing commands on an event
|filetype.txt|	settings done specifically for a type of file
|eval.txt|	expression evaluation, conditional commands
|fold.txt|	hide (fold) ranges of lines

Special issues ~
|print.txt|	printing
|remote.txt|	using Vim as a server or client
|term.txt|	using different terminals and mice
|digraph.txt|	list of available digraphs
|mbyte.txt|	multi-byte text support
|mlang.txt|	non-English language support
|arabic.txt|	Arabic language support and editing
|farsi.txt|	Farsi (Persian) editing
|hebrew.txt|	Hebrew language support and editing
|russian.txt|	Russian language support and editing
|ft_ada.txt|	Ada (the programming language) support
|ft_sql.txt|	about the SQL filetype plugin
|hangulin.txt|	Hangul (Korean) input mode
|rileft.txt|	right-to-left editing mode

GUI ~
|gui.txt|	Graphical User Interface (GUI)
|gui_w16.txt|	Windows 3.1 GUI
|gui_w32.txt|	Win32 GUI
|gui_x11.txt|	X11 GUI
|gui_mac.txt|	MacVim GUI

Interfaces ~
|if_cscop.txt|	using Cscope with Vim
|if_lua.txt|	Lua interface
|if_mzsch.txt|	MzScheme interface
|if_perl.txt|	Perl interface
|if_pyth.txt|	Python interface
|if_sniff.txt|	SNiFF+ interface
|if_tcl.txt|	Tcl interface
|if_ole.txt|	OLE automation interface for Win32
|if_ruby.txt|	Ruby interface
|debugger.txt|	Interface with a debugger
|workshop.txt|	Sun Visual Workshop interface
|netbeans.txt|	NetBeans External Editor interface
|sign.txt|	debugging signs

Versions ~
|vi_diff.txt|	Main differences between Vim and Vi
|version4.txt|	Differences between Vim version 3.0 and 4.x
|version5.txt|	Differences between Vim version 4.6 and 5.x
|version6.txt|	Differences between Vim version 5.7 and 6.x
|version7.txt|	Differences between Vim version 6.4 and 7.x
						*sys-file-list*
Remarks about specific systems ~
|os_390.txt|	OS/390 Unix
|os_amiga.txt|	Amiga
|os_beos.txt|	BeOS and BeBox
|os_dos.txt|	MS-DOS and MS-Windows NT/95 common items
|os_mac.txt|	Macintosh
|os_mint.txt|	Atari MiNT
|os_msdos.txt|	MS-DOS (plain DOS and DOS box under Windows)
|os_os2.txt|	OS/2
|os_qnx.txt|	QNX
|os_risc.txt|	RISC-OS
|os_unix.txt|	Unix
|os_vms.txt|	VMS
|os_win32.txt|	MS-Windows 95/98/NT
						*standard-plugin-list*
Standard plugins ~
|pi_getscript.txt| Downloading latest version of Vim scripts
|pi_gzip.txt|      Reading and writing compressed files
|pi_netrw.txt|     Reading and writing files over a network
|pi_paren.txt|     Highlight matching parens
|pi_tar.txt|       Tar file explorer
|pi_vimball.txt|   Create a self-installing Vim script
|pi_zip.txt|       Zip archive explorer

LOCAL ADDITIONS:				*local-additions*
|vundle.txt|          Vundle, a plug-in manager for Vim.             *vundle*
|ag.txt|   Plugin that integrates ag with Vim
|cocoa.txt|  Plugin for Cocoa/Objective-C development.
|colorv.txt|    Easier colors handling.
|ft-csv.txt|	For Vim version 7.4	Last Change: Thu, 15 Jan 2015
|ctrlp.txt|       Fuzzy file, buffer, mru, tag, ... finder. v1.79
|delimitMate.txt|   Trying to keep those beasts at bay! v2.7     *delimitMate*
|ember.txt|  Vim plugin for the Emberjs frontend framework.
|emmet.txt|        *Emmet* for Vim
|gifl|  Plugin for doing Google's I'm feeling Lucky
|Gist.vim| Vimscript for creating gists (http://gist.github.com)
|Join.txt|  A more powerful line join command in vim
|l9.txt|        Vim-script library
|matchit.txt|   Extended "%" matching
|matchtagalways.txt|  Always highlight enclosing tags
|NERD_tree.txt|   A tree explorer plugin that owns your momma!
|portkey.txt|     Navigate files at the speed of Vim
|QFEnter.txt|    Open a Quickfix item in a window you choose.
|supertab.txt|
|swap-parameters.txt| Swap parameters of a function with a single command.
|switch.txt|	Switch segments of text with predefined replacements
|syntastic.txt|   Syntax checking on the fly has never been so pimp.
|Tabular.txt|   Configurable, flexible, intuitive text aligning
|tcomment.txt|  An easily extensible & universal comment plugin
|textile.txt|              Textile for Vim       Last Change: November 3, 2008
|UltiSnips.txt|    For Vim version 7.0 or later.
|undotree.txt|  Display your undo history in a graph
|abolish.txt|  Language friendly searches, substitutions, and abbreviations
|airline.txt|  Lean and mean status/tabline that's light as air
|anzu.txt|		検索時の位置情報を表示するプラグインです。
|bundler.txt|  Support for Ruby's Bundler
|eunuch.txt|  File manipulation
|fugitive.txt|  A Git wrapper so awesome, it should be illegal
|indent_guides.txt|  A plugin for visually displaying indent levels in Vim.
|marked.vim|  Open the current Markdown buffer in Marked.app.
|misc.txt|  Miscellaneous auto-load Vim scripts
|rails.txt|	Plugin for working with Ruby on Rails applications
|rake.txt|  It's like rails.vim without the rails
|rubyrefactoring.txt|  Ruby Refactoring Tool for Vim
|vim-ruby.txt|
|session.txt|  Extended session management for Vim
|signify.txt| Indicate changed lines within a file using a VCS.
|startify.txt|  Showing recently used stuff like a boss.
|surround.txt|  Plugin for deleting, changing, and adding "surroundings"
|textobj-rubyblock.txt|	Text objects for ruby blocks
|textobj-user.txt|	Create your own text objects
|tmux-navigator.txt| Plugin to allow seamless navigation between tmux and vim
|togglecursor.txt|  Change cursor in insert mode
|turbux.txt|  Turbo Ruby tests with tmux
|unimpaired.txt|  Pairs of handy bracket mappings
|vimux.txt|   easily interact with tmux
|vimwiki.txt|   A Personal Wiki for Vim
|webapi-html.txt|			HTML parser written in pure vimscript.
|webapi-http.txt|				simple HTTP client library.
|webapi-json.txt|			JSON parser written in pure vimscript.
|webapi-xml.txt|			XML parser written in pure vimscript.
|youcompleteme|  YouCompleteMe: a code-completion engine for Vim
|ZoomWin.txt|	Zoom into/out-of a window		Jun 18, 2012
|vundle.txt|          Vundle, a plug-in manager for Vim.             *vundle*


*usr_toc.txt*	For Vim version 7.4.  Last change: 2010 Jul 20

		     VIM USER MANUAL - by Bram Moolenaar

			      Table Of Contents			*user-manual*

==============================================================================
Overview ~

Getting Started
|usr_01.txt|  About the manuals
|usr_02.txt|  The first steps in Vim
|usr_03.txt|  Moving around
|usr_04.txt|  Making small changes
|usr_05.txt|  Set your settings
|usr_06.txt|  Using syntax highlighting
|usr_07.txt|  Editing more than one file
|usr_08.txt|  Splitting windows
|usr_09.txt|  Using the GUI
|usr_10.txt|  Making big changes
|usr_11.txt|  Recovering from a crash
|usr_12.txt|  Clever tricks

Editing Effectively
|usr_20.txt|  Typing command-line commands quickly
|usr_21.txt|  Go away and come back
|usr_22.txt|  Finding the file to edit
|usr_23.txt|  Editing other files
|usr_24.txt|  Inserting quickly
|usr_25.txt|  Editing formatted text
|usr_26.txt|  Repeating
|usr_27.txt|  Search commands and patterns
|usr_28.txt|  Folding
|usr_29.txt|  Moving through programs
|usr_30.txt|  Editing programs
|usr_31.txt|  Exploiting the GUI
|usr_32.txt|  The undo tree

Tuning Vim
|usr_40.txt|  Make new commands
|usr_41.txt|  Write a Vim script
|usr_42.txt|  Add new menus
|usr_43.txt|  Using filetypes
|usr_44.txt|  Your own syntax highlighted
|usr_45.txt|  Select your language

Making Vim Run
|usr_90.txt|  Installing Vim


Reference manual
|reference_toc|     More detailed information for all commands

The user manual is available as a single, ready to print HTML and PDF file
here:
	http://vimdoc.sf.net

==============================================================================
Getting Started ~

Read this from start to end to learn the essential commands.

|usr_01.txt|  About the manuals
		|01.1|	Two manuals
		|01.2|	Vim installed
		|01.3|	Using the Vim tutor
		|01.4|	Copyright

|usr_02.txt|  The first steps in Vim
		|02.1|	Running Vim for the First Time
		|02.2|	Inserting text
		|02.3|	Moving around
		|02.4|	Deleting characters
		|02.5|	Undo and Redo
		|02.6|	Other editing commands
		|02.7|	Getting out
		|02.8|	Finding help

|usr_03.txt|  Moving around
		|03.1|	Word movement
		|03.2|	Moving to the start or end of a line
		|03.3|	Moving to a character
		|03.4|	Matching a paren
		|03.5|	Moving to a specific line
		|03.6|	Telling where you are
		|03.7|	Scrolling around
		|03.8|	Simple searches
		|03.9|	Simple search patterns
		|03.10|	Using marks

|usr_04.txt|  Making small changes
		|04.1|	Operators and motions
		|04.2|	Changing text
		|04.3|	Repeating a change
		|04.4|	Visual mode
		|04.5|	Moving text
		|04.6|	Copying text
		|04.7|	Using the clipboard
		|04.8|	Text objects
		|04.9|	Replace mode
		|04.10|	Conclusion

|usr_05.txt|  Set your settings
		|05.1|	The vimrc file
		|05.2|	The example vimrc file explained
		|05.3|	Simple mappings
		|05.4|	Adding a plugin
		|05.5|	Adding a help file
		|05.6|	The option window
		|05.7|	Often used options

|usr_06.txt|  Using syntax highlighting
		|06.1|	Switching it on
		|06.2|	No or wrong colors?
		|06.3|	Different colors
		|06.4|	With colors or without colors
		|06.5|	Printing with colors
		|06.6|	Further reading

|usr_07.txt|  Editing more than one file
		|07.1|	Edit another file
		|07.2|	A list of files
		|07.3|	Jumping from file to file
		|07.4|	Backup files
		|07.5|	Copy text between files
		|07.6|	Viewing a file
		|07.7|	Changing the file name

|usr_08.txt|  Splitting windows
		|08.1|	Split a window
		|08.2|	Split a window on another file
		|08.3|	Window size
		|08.4|	Vertical splits
		|08.5|	Moving windows
		|08.6|	Commands for all windows
		|08.7|	Viewing differences with vimdiff
		|08.8|	Various

|usr_09.txt|  Using the GUI
		|09.1|	Parts of the GUI
		|09.2|	Using the mouse
		|09.3|	The clipboard
		|09.4|	Select mode

|usr_10.txt|  Making big changes
		|10.1|	Record and playback commands
		|10.2|	Substitution
		|10.3|	Command ranges
		|10.4|	The global command
		|10.5|	Visual block mode
		|10.6|	Reading and writing part of a file
		|10.7|	Formatting text
		|10.8|	Changing case
		|10.9|	Using an external program

|usr_11.txt|  Recovering from a crash
		|11.1|	Basic recovery
		|11.2|	Where is the swap file?
		|11.3|	Crashed or not?
		|11.4|	Further reading

|usr_12.txt|  Clever tricks
		|12.1|	Replace a word
		|12.2|	Change "Last, First" to "First Last"
		|12.3|	Sort a list
		|12.4|	Reverse line order
		|12.5|	Count words
		|12.6|	Find a man page
		|12.7|	Trim blanks
		|12.8|	Find where a word is used

==============================================================================
Editing Effectively ~

Subjects that can be read independently.

|usr_20.txt|  Typing command-line commands quickly
		|20.1|	Command line editing
		|20.2|	Command line abbreviations
		|20.3|	Command line completion
		|20.4|	Command line history
		|20.5|	Command line window

|usr_21.txt|  Go away and come back
		|21.1|	Suspend and resume
		|21.2|	Executing shell commands
		|21.3|	Remembering information; viminfo
		|21.4|	Sessions
		|21.5|	Views
		|21.6|	Modelines

|usr_22.txt|  Finding the file to edit
		|22.1|	The file explorer
		|22.2|	The current directory
		|22.3|	Finding a file
		|22.4|	The buffer list

|usr_23.txt|  Editing other files
		|23.1|	DOS, Mac and Unix files
		|23.2|	Files on the internet
		|23.3|	Encryption
		|23.4|	Binary files
		|23.5|	Compressed files

|usr_24.txt|  Inserting quickly
		|24.1|	Making corrections
		|24.2|	Showing matches
		|24.3|	Completion
		|24.4|	Repeating an insert
		|24.5|	Copying from another line
		|24.6|	Inserting a register
		|24.7|	Abbreviations
		|24.8|	Entering special characters
		|24.9|	Digraphs
		|24.10|	Normal mode commands

|usr_25.txt|  Editing formatted text
		|25.1|	Breaking lines
		|25.2|	Aligning text
		|25.3|	Indents and tabs
		|25.4|	Dealing with long lines
		|25.5|	Editing tables

|usr_26.txt|  Repeating
		|26.1|	Repeating with Visual mode
		|26.2|	Add and subtract
		|26.3|	Making a change in many files
		|26.4|	Using Vim from a shell script

|usr_27.txt|  Search commands and patterns
		|27.1|	Ignoring case
		|27.2|	Wrapping around the file end
		|27.3|	Offsets
		|27.4|	Matching multiple times
		|27.5|	Alternatives
		|27.6|	Character ranges
		|27.7|	Character classes
		|27.8|	Matching a line break
		|27.9|	Examples

|usr_28.txt|  Folding
		|28.1|	What is folding?
		|28.2|	Manual folding
		|28.3|	Working with folds
		|28.4|	Saving and restoring folds
		|28.5|	Folding by indent
		|28.6|	Folding with markers
		|28.7|	Folding by syntax
		|28.8|	Folding by expression
		|28.9|	Folding unchanged lines
		|28.10|	Which fold method to use?

|usr_29.txt|  Moving through programs
		|29.1|	Using tags
		|29.2|	The preview window
		|29.3|	Moving through a program
		|29.4|	Finding global identifiers
		|29.5|	Finding local identifiers

|usr_30.txt|  Editing programs
		|30.1|	Compiling
		|30.2|	Indenting C files
		|30.3|	Automatic indenting
		|30.4|	Other indenting
		|30.5|	Tabs and spaces
		|30.6|	Formatting comments

|usr_31.txt|  Exploiting the GUI
		|31.1|	The file browser
		|31.2|	Confirmation
		|31.3|	Menu shortcuts
		|31.4|	Vim window position and size
		|31.5|	Various

|usr_32.txt|  The undo tree
		|32.1|	Undo up to a file write
		|32.2|	Numbering changes
		|32.3|	Jumping around the tree
		|32.4|	Time travelling

==============================================================================
Tuning Vim ~

Make Vim work as you like it.

|usr_40.txt|  Make new commands
		|40.1|	Key mapping
		|40.2|	Defining command-line commands
		|40.3|	Autocommands

|usr_41.txt|  Write a Vim script
		|41.1|	Introduction
		|41.2|	Variables
		|41.3|	Expressions
		|41.4|	Conditionals
		|41.5|	Executing an expression
		|41.6|	Using functions
		|41.7|	Defining a function
		|41.8|	Lists and Dictionaries
		|41.9|	Exceptions
		|41.10|	Various remarks
		|41.11|	Writing a plugin
		|41.12|	Writing a filetype plugin
		|41.13|	Writing a compiler plugin
		|41.14|	Writing a plugin that loads quickly
		|41.15|	Writing library scripts
		|41.16|	Distributing Vim scripts

|usr_42.txt|  Add new menus
		|42.1|	Introduction
		|42.2|	Menu commands
		|42.3|	Various
		|42.4|	Toolbar and popup menus

|usr_43.txt|  Using filetypes
		|43.1|	Plugins for a filetype
		|43.2|	Adding a filetype

|usr_44.txt|  Your own syntax highlighted
		|44.1|	Basic syntax commands
		|44.2|	Keywords
		|44.3|	Matches
		|44.4|	Regions
		|44.5|	Nested items
		|44.6|	Following groups
		|44.7|	Other arguments
		|44.8|	Clusters
		|44.9|	Including another syntax file
		|44.10|	Synchronizing
		|44.11|	Installing a syntax file
		|44.12|	Portable syntax file layout

|usr_45.txt|  Select your language
		|45.1|	Language for Messages
		|45.2|	Language for Menus
		|45.3|	Using another encoding
		|45.4|	Editing files with a different encoding
		|45.5|	Entering language text

==============================================================================
Making Vim Run ~

Before you can use Vim.

|usr_90.txt|  Installing Vim
		|90.1|	Unix
		|90.2|	MS-Windows
		|90.3|	Upgrading
		|90.4|	Common installation issues
		|90.5|	Uninstalling Vim

==============================================================================


