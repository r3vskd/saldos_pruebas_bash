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
###############################function####################
greet() {
  local name=$1
  printf "Hello, %s!\n" "$name"
}

main() {
  greet "Alice"
  greet "Bob"
}

# Function to display car details
Car_display() {
  local car_name=$1
  printf "Make: %s\n" "$(Car_get_property "$car_name" "make")"
  printf "Model: %s\n" "$(Car_get_property "$car_name" "model")"
  printf "Year: %s\n" "$(Car_get_property "$car_name" "year")"
}

main

