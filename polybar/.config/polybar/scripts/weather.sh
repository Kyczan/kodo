#!/bin/bash

# get weather data
. $HOME/bin/weather/weather

echo "%{F#6272a4}${icon}%{F-} ${temp}${icon_celsius}"
