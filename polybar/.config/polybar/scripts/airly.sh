#!/bin/bash

function parse {
  VALUE=`node -pe "JSON.parse(process.argv[1]).${2}" "${1}"`
  echo $VALUE ;
}

# icons from icons-in-terminal
. $HOME/.local/share/icons-in-terminal/icons_bash.sh
icon_leaf=`echo -e $fa_leaf`

# Get API key and installation id from cfg file
. $HOME/.config/polybar/scripts/airly.cfg
api_key="${AIRLY_API_KEY}"
installation_id="${AIRLY_INSTALLATION_ID}"

airly_url="https://airapi.airly.eu/v2/measurements/installation?indexType=AIRLY_CAQI&installationId=${installation_id}&apikey=${api_key}"

data=$(wget -qO- "${airly_url}")

if [ -n "$data" ]; then
  caqi_index_float=`parse "${data}" current.indexes[0].value`
  caqi_index=${caqi_index_float%.*}

  color="#6272a4"

  if [ "$caqi_index" -gt 50 ]; then
      color="#bd2c40"
  fi

  echo "%{F${color}}${icon_leaf}%{F-} ${caqi_index}"
else
  echo ""
fi
