#/bin/bash

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
  printf "██████   ██████  ███    ██ ██   ██ \n"
  printf "██   ██ ██    ██ ████   ██ ██  ██  \n"
  printf "██████  ██    ██ ██ ██  ██ █████   \n"
  printf "██   ██ ██    ██ ██  ██ ██ ██  ██  \n"
  printf "██████   ██████  ██   ████ ██   ██ \n"
  printf "By: r3vskd \n"
  reset_color

  ############# clase con los atributos de la wallet
  declare -A asignar_valores

  asignar_valores_fn(){
    local titular=$1
    declare -gA "$titular"
  }

  asignar_atributos(){
    local titular=$1
    local cuenta=$2
    local saldo=$3
    eval "$titular[$cuenta]=\"$saldo\""
  }

  mostrar_atributos(){
    local titular=$1
    local cuenta operacion cantidad
  }

  read -p 'Ingresa el nuemro de cuenta al que deseas depostiar'
  read -p 'Deseas depositar o retirar? (ingresa alguuna de las dos palabras: depositar o retirar):  '
  read -p 'Ingresa la cantidad que deseas depositar: '
  read -p 'Ingresa el numero de cuenta que deseas visualizar el saldo'
}

main

