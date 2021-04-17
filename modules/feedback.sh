#!/usr/bin/env bash

# Imports
# -------------------------------------------------------------------------------------------------

source <(curl -s https://raw.githubusercontent.com/tlatsas/bash-spinner/master/spinner.sh)

# -------------------------------------------------------------------------------------------------

function start_spinner_in_category {
  category=$1
  message=$2

  full_message="  \x1B[36m\r➤\e[1m ${category}:\x1B[0m ${message}"

  start_spinner "${full_message}"
}

function log_title {
  message=$1

  bold=$(tput bold)
  reset=$(tput sgr0)
  magenta=$(tput setaf 5)
  number_of_columns="$(($(tput cols)-27))"
  separator_spaces=$(printf "%${number_of_columns}s")

  echo
  echo "${bold}${magenta}${message}${reset}"
  echo ${separator_spaces// /-}
}

function log_error {
  message=$1

  bold=$(tput bold)
  reset=$(tput sgr0)
  red=$(tput setaf 1)

  echo "${bold}${red}Error:${reset}"
  echo "${red}  ${message}${reset}"
}

function throw_error {
  message=$1

  log_error "${message}"
  exit 1
}