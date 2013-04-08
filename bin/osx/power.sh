#!/bin/bash

function power_mode() {
  local MODE=$(pmset -g | grep Power | fgrep '*' | cut -d' ' -f1)
  if [[ $MODE == 'Battery' ]]; then
    echo '🔋 '
  else
    echo '🔌 '
  fi
}
