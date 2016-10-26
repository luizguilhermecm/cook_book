#!/bin/sh

kill -9 $(lsof -i tcp:$1 | awk '{if(NR>1)print $2}') ;
shotgun config.ru -p $1 -o 0.0.0.0;
