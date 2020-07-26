#!/bin/bash

URL='https://www.google.com/search?q='
QUERY=`echo | dmenu -f -p "Search:" -f`
if [ -n "$QUERY" ]; then
	firefox "${URL}${QUERY}"
	xdotool key super+3
fi
