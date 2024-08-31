#!/bin/bash

set_color() {
  local color_code=$1
  printf "\033[${color_code}m"
}

reset_color() {
  printf "\033[0m"
}

main() {
  local RED="31"
  local GREEN="32"
  local YELLOW="33"
  local BLUE="34"
  local MAGENTA="35"
  local CYAN="36"

  set_color "$RED"
  printf "This is a red line\n"
  reset_color
}

main

