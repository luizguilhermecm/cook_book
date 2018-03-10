http://mywiki.wooledge.org/Quotes



MoinMoin Logo
Login
Quotes
BashGuideBashFAQRecentChangesFindPageHelpContentsQuotes
Edit (Text)Edit (GUI)InfoAttachments
In many languages, quotes are mainly used to specify that the enclosed text is to be interpreted as a string datatype, but in shell programming, almost everything is a string, so quoting in the shell has many different effects and purposes. There are multiple types of quotes which primarily enable different ways of interpreting their contents. Unfortunately, the rules are often hard for beginners to learn and their behavior varies by context with several special cases and exceptions to remember. Also unfortunately, quoting in shell programming is extremely important. It's something no one can avoid learning. Improper shell quoting is one of the most common sources of scripting bugs and security issues. Fortunately, it's possible to get it right most of the time by following a few guidelines, but do not guess about quoting. When in doubt, test, and read the man page for how quotes are to be interpreted in a given context.

Contents
I'm Too Lazy to Read, Just Tell Me What to Do
Types of quoting
Effects of Quoting
Preserve unescaped metacharacters
Prevent field splitting and ignore glob pattern characters
Expand argument lists
When Should You Quote?
Examples
Exceptions
Patterns
Here Documents
Types of Quoting -- The Verbose Version
See also

I'm Too Lazy to Read, Just Tell Me What to Do


cp $file $destination         # WRONG
cp -- "$file" "$destination"  # Right
When in doubt, double-quote every expansion in your shell commands.

Types of quoting

There are three standard types of quotes (or four if you count backslash escaping), and two nonstandard Bash extensions. This is the brief description of each of them. Read below for the verbose version.

Single quotes: '...' removes the special meaning of every character between the quotes. Everything inside single quotes becomes a literal string. The only character that you can't safely enclose in single quotes is a single quote.
Double quotes: "..." prevents some substitutions but allows others. Every substitution that begins with a dollar sign $ is performed, as is the legacy `...` (backtick) command substitution. Backslash escaping is also performed. No word splitting or filename expansion is performed.
Backticks: `...` is the legacy command substitution syntax; deprecated in favor of $(...) but still permitted for historical reasons. See FAQ 082 for details.
Backslash: Putting \ in front of a metacharacter removes its special meaning. This works inside double quotes, or in the absence of quotes. It does not work inside single quotes.
$'...' : This is a Bash extension. It prevents everything except backslash escaping, and also allows special backslash escape sequences like \n for newline, \t for tab, and \xnn for bytes specified in hexadecimal.
$"..." : This is another Bash extension. It is used for localization support and will not be covered on this page.
You may concatenate the various types of quoting if you need to. For example, if you have one section of a string that has lots of special characters that you'd like to single-quote, and another section with a parameter expansion in it which must be double-quoted, you may mix them:


$ foo=bar
$ echo '!%$*&'"$foo"
!%$*&bar
Any number of quoted substrings, of any style, may be concatenated in this manner. The result (after appropriate expansions in the double-quoted sections) is a single word.

Effects of Quoting

Preserve unescaped metacharacters

A shell command is parsed by the shell into words, using whitespace (regardless of the IFS variable) and other shell metacharacters. The first function of quoting is to permit words to contain these metacharacters.


echo '&'
Without quotes, the & would put the echo command into the background. With quotes, the & is simply made into a word, and passed as an argument to the echo command instead.

The quotes are not actually passed along to the command. They are removed by the shell (this process is cleverly called "quote removal"). In the example above, the echo command sees only the &, not the quotes.

Prevent field splitting and ignore glob pattern characters

The second purpose of quoting is to prevent word splitting and globbing. The result of a double-quoted substitution does not undergo any further processing (whereas the result of an unquoted substitution does).


cp -- "$filename" "$destination"
In this example, the double quotes protect the value of each parameter (variable) from undergoing word splitting or globbing should it happen to contain whitespace or wildcard characters (* or ? or [...]). Without the quotes, a filename like hot stuff.mp3 would be split into two words, and each word would be passed to the cp command as a separate argument. Or, a filename that contains * with whitespace around it would produce one word for every file in the current directory. That is not what we want.

With the quotes, every character in the value of the filename parameter is treated literally, and the whole value becomes the second argument to the cp command.

When in doubt, always double-quote your parameter expansions.

Expand argument lists

Double-quoting $@ or ${array[@]} has a special meaning. "$@" expands to a list of words, with each positional parameter's value being one word. Likewise, "${array[@]}" expands to a list of words, one per array element. When dealing with the positional parameters or with the contents of an array as a list of words, always use the double-quoted syntax.

Double-quoting $* or ${array[*]} results in one word which is the concatenation of all the positional parameters (or array elements) with the first character of IFS between them. This is similar to the join function in some other languages, although the fact that you can only have a single join character can sometimes be a crippling limitation.

When Should You Quote?

The basic rule of thumb is that you should double-quote every expansion. This prevents unwanted word splitting and globbing. When in doubt, quote it.

There are a few cases where double quotes may be safely omitted:

On the right hand side of a simple assignment. You may write foo=$bar without quotes. This is POSIX compliant.
The word following a case keyword. You may write case $foo in ... safely. This is POSIX compliant.
Inside a [[ command, except on the right hand side of an = or == operator. [[ already suppresses word splitting and globbing, so you can write things like [[ -z $string ]] safely if you wish. However, be warned that [[ foo = $bar ]] and [[ foo = "$bar" ]] act differently (see patterns below). The [[ keyword is a Bash extension.
Use single quotes when protecting complex strings, especially ones that contain shell syntax which you don't want evaluated.

Examples

Here are some assorted examples, to show how things should be done. Some of these examples use bash/ksh syntax that won't work in strict POSIX shells.

Proper iteration over the positional parameters using a quoted "$@". Never use an unquoted $@ or $*.

for file in "$@"; do
...
done
As above, except with an array:

for element in "${array[@]}"; do
...
Proper iteration over array indexes:

# bash 3.0 and higher
for index in "${!array[@]}"; do
...
All of the usual expansions apply to text within the parentheses of a compound array assignment including word splitting and pathname expansion, and must be quoted and escaped in the same way as though they were to be passed as arguments to a command:

# bash or ksh93
find_opts=( \( -iname '*.jpg' -o -iname '*.gif' -o -iname '*.png' \) )
find . "${find_opts[@]}" -print
There are generally three alternatives for encoding a literal string containing quotes. Which works best depends on the context. First, a single quoted string that can contain anything other than single-quotes. In this case, an escaped, unquoted single-quote is concatenated with the argument between two single quoted strings. Second, a double-quoted string with all expansions and double-quotes within escaped. Third, a less portable equivalent using $'...':

echo 'Don'\''t walk!'
echo "Don't walk!"
echo $'Don\'t talk!'
$(...)-style command substitutions are unique in that the quoting of their contents is completely independent to their surroundings. This means you don't have to worry about nested quote escaping problems:

echo "The matching line is: $(grep foo "$filename")"

# Note that the quotes inside the $() command substitution are nested.
# This looks wrong to a C programmer, but it is correct in shells.

echo "The matching line is: $(grep foo "$filename")"
#                                      ^---------^    inner layer (quotes)
#                           ^^--------------------^   middle layer (command sub)
#    ^---------------------------------------------^  outer layer (quotes)

# Without the inner quotes, the value of $filename would be word-split and globbed
# before being handed to grep.
An example showing an array being "joined" with "${a[*]}":

# bash
ip=192.168.1.30
netmask=255.255.254.0
IFS=. read -ra ip_octets <<<"$ip"
IFS=. read -ra netmask_octets <<<"$netmask"
for i in 0 1 2 3; do
  ((ip_octets[i] &= netmask_octets[i]))
done
IFS=.; network="${ip_octets[*]}"; unset IFS
The ansi-c $'...' quoting style is used to interpret backslash escapes:

IFS=$' \t\n'
# sets the IFS variable to the three-byte string containing
# a space, a tab, and a newline
Examples showing backslash sequences:

# The following are all equivalent:
echo $'hi\nthere\n'

printf '%s\n' hi $'there\n'

# discouraged:
echo -e 'hi\nthere\n'

# ksh:
print 'hi\nthere\n'
Exceptions

Patterns

One important situation where quotes can have an unintended effect is in the case of pattern matching contexts. Bash uses quotes to suppress the "specialness" of patterns and regular expressions. Characters interpreted specially in a pattern matching context are treated literally when quoted whether the pattern is expanded from a parameter or not.


if [[ $path = foo* ]]; then
# unquoted foo* acts as a glob

if [[ $path = "foo*" ]]; then
# quoted "foo*" is a literal string

if [[ $path =~ $some_re ]]; then
# the contents of $some_re are treated as an ERE

if [[ $path =~ "$some_re" ]]; then
# the contents of $some_re are treated as a literal string
# despite the =~ operator

# the "quoted" branch is taken.

g=a*[b]

case $g in
    $g)
        echo 'unquoted pattern'
        ;;
    "$g")
        echo 'quoted pattern'
        ;;
esac
Here Documents

Quote-removal never applies to the contents of a here document


 $ arr=(words in array); cat <<EOF
> These are the "${arr[@]}"
> EOF
These are the "words in array"
Quoting or escaping the "delimiter" in the heredoc redirection affects whether its contents are subject to expansions. The quoted variety is bash's only context in which an arbitrary string may be used with no special interpretation except for lines beginning with the delimiter, which marks the end of the heredoc.


{ printf '%s\n' before "$(</dev/stdin)" after; } <<\EOF
# Anything but "EOF" can go here
EOF

Types of Quoting -- The Verbose Version

Single quotes: (apostrophes) prevent all special interpretation of the characters between them. Everything between single quotes is literal and expands to a single word. The only thing which cannot be single-quoted is a single quote itself.
Double quotes: are the most important and complex type of quoting in shell programming. Double quotes permit the shell to parse their contents for those types of expansions that are prefixed with a $ sign - parameter expansions, arithmetic expansions and command substitutions, while treating all other content as literal (except for the legacy backticks (`) described below or history expansion (!)). Most importantly, word splitting and filename expansion are not applied to anything within double quotes, but they also protect their contents from brace expansion, tilde expansion, process substitution, and interpretation as redirection syntax. Like single quotes, double quotes also allow for the inclusion of metacharacters and control operators without backslash escaping. Double quotes also have important effects on parameter expansions, where they can influence the number of words when expanding composite variables (arrays and positional parameters), and by not applying word splitting and pathname expansion to the results.
Escaping: The escape character in Bash and POSIX sh is the backslash. In addition to some of the usual uses for escape sequences in other languages, an unquoted escape in an ordinary argument evaluation context in Bash serves mostly the same function as single-quoting. A backslash followed by a glob character, metacharacter, redirect operator, and some other characters with special meaning causes them to become literal. Escapes have several other functions in other contexts, such as within pattern matching contexts and arguments corresponding to printf's %b format, including some undocumented functions, like changing the special-builtin lookup order in non-POSIX mode (In other words, it does more than can fit into a short overview). Most commonly, escapes used as a form of quoting are a shortcut alternative to single-quoting a single character. e.g. you might write \* instead of '*', or combine multiple words into a single word using foo\ bar instead of 'foo bar' (or more accurately, foo' 'bar).
$'...' Acts just like single quotes except backslash-escaped combinations are expanded as specified by the ANSI C standard. It can be used to encode nonprintable characters or arbitrary binary data. While $'...' is widely supported by Bash, Ksh93, and relatives, and will eventually be required by POSIX, it is still far from ubiquitous. Be sure all your target platforms supports this first.
$"...": A rarely used bash-specific form of quoting for localization support.
Note: Although backticks (`) are a type of quotes linguistically, they don't actually "quote" anything in bash. Where quoting in bash is used to make data (partly) literal, backticks do something entirely different. They're the old Bourne syntax for command substitution. They mostly do the same thing as $(...), but there are a handful of weird exceptions. Either way, it doesn't matter that much: Their use is deprecated in favor of $(...), and you really shouldn't use these things anymore in modern or maintained bash code. Take away from this that if you see them, they do NOT void the need for quoting (just like "$(command)", you should double-quote them: "`command`"), and you should probably just replace them with $().

See also

http://www.grymoire.com/Unix/Quote.html
http://wiki.bash-hackers.org/syntax/quoting
http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_02
CategoryShell

Quotes (last edited 2016-12-12 20:00:58 by GreyCat)
Edit (Text)Edit (GUI)InfoAttachments
MoinMoin PoweredPython PoweredGPL licensedValid HTML 4.01
