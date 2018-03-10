#!/bin/bash

arg1=$1

# [[ -z "$query" ]] && query="$(pbpaste)";

[[ -z "$arg1" ]] && arg1="default_value";

echo -e "$arg1"
