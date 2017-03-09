# 6.4 Alternate Forms For Complex Commands
http://zsh.sourceforge.net/Doc/Release/Shell-Grammar.html#Shell-Grammar

Many of zsh’s complex commands have alternate forms. These are non-standard and
are likely not to be obvious even to seasoned shell programmers; they should
not be used anywhere that portability of shell code is a concern.

The short versions below only work if sublist is of the form ‘{ list }’ or if
the SHORT_LOOPS option is set. For the if, while and until commands, in both
these cases the test part of the loop must also be suitably delimited, such as
by ‘[[ … ]]’ or ‘(( … ))’, else the end of the test will not be recognized. For
the for, repeat, case and select commands no such special form for the
arguments is necessary, but the other condition (the special form of sublist or
use of the SHORT_LOOPS option) still applies.


if list { list } [ elif list { list } ] ... [ else { list } ]
An alternate form of if. The rules mean that

if [[ -o ignorebraces ]] {
  print yes
}
works, but

if true {  # Does not work!
  print yes
}
does not, since the test is not suitably delimited.

if list sublist
A short form of the alternate if. The same limitations on the form of list apply as for the previous form.

for name ... ( word ... ) sublist
A short form of for.

for name ... [ in word ... ] term sublist
where term is at least one newline or ;. Another short form of for.

for (( [expr1] ; [expr2] ; [expr3] )) sublist
A short form of the arithmetic for command.

foreach name ... ( word ... ) list end
Another form of for.

while list { list }
An alternative form of while. Note the limitations on the form of list mentioned above.

until list { list }
An alternative form of until. Note the limitations on the form of list mentioned above.

repeat word sublist
This is a short form of repeat.

case word { [ [(] pattern [ | pattern ] ... ) list (;;|;&|;|) ] ... }
An alternative form of case.

select name [ in word ... term ] sublist
where term is at least one newline or ;. A short form of select.

