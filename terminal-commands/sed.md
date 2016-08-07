# sed

## Remove all but letter

Using regex to get the job done;

`$ sed 's/[^a-zA-Z]/_/' input_file`

That will replace any character but letters for an **underscore**

`for i in {1..10}; do echo $(rand 30 | sed -e 's/[^a-z]/_/g') ; done`





