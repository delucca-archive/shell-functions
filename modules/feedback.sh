#!/bin/bash

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

function log_in_category {
  category=$1
  text=$2
  color="${3:-C_HIGHLIGHT}"

  echo "$(highlight "${category}:" "${color}") ${text}"
}

function highlight {
  bold=$(tput bold)
  color_default=$(tput setaf 6)
  reset=$(tput sgr0)

  text=$1
  color="${2:-$color_default}"

  echo "${bold}${color}${text}${reset}"
}
