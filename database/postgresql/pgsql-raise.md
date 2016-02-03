RAISE
=====

When using `RAISE` on *postgres* there is six types of:

1. DEBUG
1. LOG
1. INFO
1. NOTICE
1. WARNING
1. EXCEPTION

In a standard environment, the messages of *INFO*, *NOTICE*, *WARNING* and
*EXCEPTION* will be logged.

Just a hint, if the `RAISE EXCEPTION` be reached, the execution stops.
So, to use more than one in a row, it has to be the last one.

A simple example using all of them at once:

``` example_1
RAISE DEBUG 'debug message %', NEW.property;
RAISE LOG 'log message %', NEW.property;
RAISE INFO 'info message %', NEW.property;
RAISE NOTICE 'notice message %', NEW.property;
RAISE WARNING 'warning message %', NEW.property;
RAISE EXCEPTION 'exception message %', NEW.property;
```

The output on the log file would be:

```
2015-12-29 04:21:04 NOTICE : INFO:  info message LOG_LEVEL
2015-12-29 04:21:04 NOTICE : NOTICE:  notice message LOG_LEVEL
2015-12-29 04:21:04 NOTICE : WARNING:  warning message LOG_LEVEL
2015-12-29 04:21:04 ERROR  : ERROR:  exception message LOG_LEVEL
```

#### Options

Each `RAISE` accepts a list of options that can be used to give more information
about whatever happened.

Available options:

1. ERRCODE
1. MESSAGE
1. HINT
1. DETAIL
1. COLUMN
1. CONSTRAINT
1. DATATYPE
1. TABLE
1. SCHEMA

To use one or more of then is necessary to inform with reserved word *USING*,
this is only necessary in the first one, and them use *,* to split them.

An example using several at once:

```
RAISE triggered_action_exception
USING MESSAGE = 'a text',
      HINT = 'a hint',
      DETAIL = 'some detail',
      COLUMN = 'info about column',
      CONSTRAINT = 'about constraint',
      DATATYPE = 'which datatype',
      TABLE = 'say some about table',
      SCHEMA = 'and which schema';
```

In the example, the *RAISE* if an _EXCEPTION_.
The word `triggered_action_exception` is an *error code* defined by postgres in
http://www.postgresql.org/docs/9.3/static/errcodes-appendix.html.

Observations:

* When a *RAISE* has an string message like those in example_1, the option
*MESSAGE* can't be used.

* Using `'substring' || 'substring'` is permitted only on the options strings,
when needed in the main message of *RAISE*, it can be done using `%` and then
send the params after, like example_1.

