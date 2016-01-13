# Shell Script Arguments

## Passing Arguments to Shell Script

There is nothing new here, just giving names to known faces.

To pass an argument, to a functions named `cookbook_snk`, just do as follow:

1. Passing **one** argument with value equal `42`:

```
cookbook_snk 42
```

1. Passing **three** arguments with values: `42`, `"shell script"` and `lgcm`
in that order:

```
cookbook_snk 42 "shell script" lgcm
```

## Receiving Arguments Into Shell Script Function

Till here nothing new was showed.

Now to receive an argument that a function received has some peculiarities.

There is a several variables in shell script that holds values such
_arguments values_, _number of arguments received_ and
_name of function invocad_.

All of them has a name starting with **$**, the list of variables is;


| VARIABLE | Holds                                                                                                                                                              |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| $0       | Refers to the name of function itself.                                                                                                                             |
| $#       | Refers to the number of arguments specified on a command line.                                                                                                     |
| $@       | Returns a sequence of strings wherein each positional parameter remains separate from the others.                                                                  |
| $*       | Returns a single string comprising all of the positional parameters separated by the internal field separator character (defined by the IFS environment variable). |
| $1       | Refers to the first parameter specified.                                                                                                                           |
| $2       | Refers to the second parameter specified.                                                                                                                          |
| $3       | Refers to the third parameter specified.                                                                                                                           |
| $**N**   | Refers to the _N-ish_ parameter specified.                                                                                                                         |



### Example

```
# Generate a random string with lenght equal N
function rand() {
    echo "$0 is an function to generate a random string with lenght equal N.";
    echo "$0 expects one or zero arguments and it will be the lenght of string";
    echo "If no one parameter is specified, it will use a lenght equal 10.";
    echo "It was received $# parameters.";

    if [ $# -eq 0 ]; then
      openssl rand -base64 10;
    else
      openssl rand -base64 "$1";
    fi;
}
```
