#!/bin/bash

# get weather data
. $HOME/bin/weather/weather

if [ -n "$data" ]; then
  echo "%{F#6272a4}${icon}%{F-} ${temp}${icon_celsius}"
else
  echo ""
fi
