# about pipe, loop

When a pipe is used to send output forward it will be done one line per time,
not all at once as I always thought.

To get some output was used `$ cal`.

> cal(1), ncal(1)          - displays a calendar and the date of easter

## Shell Script and Pipe

The output of pipe is read by `read` command.

`read pipe_output;` will read the first line and store into a variable named pipe_output
`echo $pipe_output;` print the variable

``` sh
#!/bin/bash

receive_pipe_output_function(){
    read pipe_output;
    echo $pipe_output;

    echo $pipe_output; # sec_echo
}
```

*sec_echo* The second `echo` of funcion will print the same of the first.

*Each time a `read` is called, the next line will be read*

``` sh
#!/bin/bash

receive_pipe_output_function(){
  while read data; do
      echo "$data"
  done
}
```
