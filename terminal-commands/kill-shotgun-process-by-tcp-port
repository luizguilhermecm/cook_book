-------------------------------------------------------------------------------
kill-shotgun-process-by-tcp-port
-------------------------------------------------------------------------------
PROBLEM:
    When 'shotgun' is started I dont know how to close it, so I use a ctrl+c, 
    somethimes it works and it is fully closed, but somethimes shotgun keep
    the TCP port blocked.
    
SOLUTION:
    Find all the process that is using the port and shut it down.

-------------------------------------------------------------------------------
#1 Find all process that is using the TCP port

    lsof -i tcp:4567

// output
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ruby      287  snk    9u  IPv4 0xcb1dcec8f7880087      0t0  TCP *:tram (LISTEN)
ruby      287  snk   13u  IPv4 0xcb1dcec8f787f7b7      0t0  TCP localhost:tram->localhost:62225 (CLOSE_WAIT)
ruby    23799  snk    9u  IPv4 0xcb1dcec8f7880087      0t0  TCP *:tram (LISTEN)
ruby    23799  snk   22u  IPv4 0xcb1dcec8f83e7c97      0t0  TCP localhost:tram->localhost:56565 (CLOSE_WAIT)
// output

-------------------------------------------------------------------------------
#2 I do not need the first line of the output

Send the output of 'lsof' using pipe to remove it, two ways that I found to do
it.

    lsof -i tcp:4567 | awk '{if(NR>1)print}'

    lsof -i tcp:4567 | sed -n '1!p'

// output
ruby      287  snk    9u  IPv4 0xcb1dcec8f7880087      0t0  TCP *:tram (LISTEN)
ruby      287  snk   13u  IPv4 0xcb1dcec8f787f7b7      0t0  TCP localhost:tram->localhost:62225 (CLOSE_WAIT)
ruby    23799  snk    9u  IPv4 0xcb1dcec8f7880087      0t0  TCP *:tram (LISTEN)
ruby    23799  snk   22u  IPv4 0xcb1dcec8f83e7c97      0t0  TCP localhost:tram->localhost:56565 (CLOSE_WAIT)
// output

-------------------------------------------------------------------------------
#3 The output of lsof has a bunch of columns and I just need the PID

Send the output using pipe to 'awk' and print the second column.

    lsof -i tcp:4567 | awk '{print $2}'

Join the awk which remove the first line and printting only $2

    lsof -i tcp:4567 | awk '{if(NR>1)print $2}'

//output
287
287
23799
23799
//output

-------------------------------------------------------------------------------
#4 Kill the process

Awk will print a bunch of lines if more than one process is using that port.
Use that command as parameter for kill.

kill -9 $(lsof -i tcp:4567 | awk '{if(NR>1)print $2}') 

-------------------------------------------------------------------------------
