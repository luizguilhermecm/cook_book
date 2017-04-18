RAISE
=====

>
> Use the RAISE statement to report messages and raise errors.
>

Syntax:

```
RAISE [ level ] 'format' [, expression [, ... ]] [ USING option = expression [, ... ] ];
RAISE [ level ] condition_name [ USING option = expression [, ... ] ];
RAISE [ level ] SQLSTATE 'sqlstate' [ USING option = expression [, ... ] ];
RAISE [ level ] USING option = expression [, ... ];
RAISE ;
```

The *level* option specifies the error severity.
There is six:

1. DEBUG
1. LOG
1. INFO
1. NOTICE
1. WARNING
1. EXCEPTION
  * *default*
  * stop the execution

In a standard environment, the messages of *INFO*, *NOTICE*, *WARNING* and
*EXCEPTION* will be logged.

A simple example using all of them at once:

```sql
RAISE DEBUG 'debug message ';
RAISE LOG 'log message ';
RAISE INFO 'info message ';
RAISE NOTICE 'notice message ';
RAISE WARNING 'warning message ';
RAISE EXCEPTION 'exception message and execution will stop here';
```

A more elaborated raise would be
```
RAISE INFO
  USING MESSAGE = 'raised info message text',
  HINT = 'a hint message',
  DETAIL = 'some detail';
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

