#!/bin/bash
trap "exit" INT

for f in ./files/*; do psql -d wum -f "$f" ; rm "$f" ; done
