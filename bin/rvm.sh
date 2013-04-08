#!/bin/bash

function rvm_mode() {
  local RVM_INFO=( $(~/.rvm/bin/rvm-prompt i " " g) )
  local RVM_RUBY=$(echo "${RVM_INFO[0]}" | wc -c)
  local RVM_GEMSET=$(echo "${RVM_INFO[1]}" | wc -c)

  if [[ $RVM_RUBY -le 1 ]]; then
    echo '⚪ '
  else
    if [[ $RVM_GEMSET -le 1 ]]; then
      echo '🔴 '
    else
      echo '🔵 '
    fi
  fi
}
