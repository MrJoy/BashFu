#!/bin/bash

CLOCK_FACES=( "🕛 🕧" "🕐 🕜" "🕑 🕝" "🕒 🕞" "🕓 🕟" "🕔 🕠" "🕕 🕡" "🕖 🕢" "🕗 🕣" "🕘 🕤" "🕙 🕥" "🕚 🕦" )

function rounded_time() {
  local RAW_HOUR=$(( ${1} + 0 ))
  local RAW_MINUTE=$(( ${2} + 0 ))
  local REMAINDER=$((RAW_MINUTE % 30))
  if [[ $REMAINDER -gt 15 ]]; then
    REMAINDER=-$((30-REMAINDER))
  fi
  local COERCED_HOUR="$RAW_HOUR"
  local COERCED_MINUTE="$((RAW_MINUTE - REMAINDER))"
  if [[ $COERCED_MINUTE -ge 60 ]]; then
    COERCED_HOUR=$(( (RAW_HOUR + 1) % 24 ))
    COERCED_MINUTE='0'
  fi
  COERCED_MINUTE=$((COERCED_MINUTE / 30))
  if [[ $COERCED_HOUR -ge 12 ]]; then
    COERCED_HOUR=$((COERCED_HOUR - 12))
  fi
  echo $COERCED_HOUR $COERCED_MINUTE
}

function show_clock() {
  local RAW_TIME=( $(date +"%H %M") )
  local INDEXES=( $(rounded_time $((RAW_TIME[0] + 0)) $((RAW_TIME[1] + 0))) )
  local FACES_FOR_HOUR=( ${CLOCK_FACES[INDEXES[0]]} )
  echo "${FACES_FOR_HOUR[INDEXES[1]]} "
}
