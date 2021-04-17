#!/bin/bash

# Imports
# -------------------------------------------------------------------------------------------------

source <(curl -s "https://raw.githubusercontent.com/delucca/shell-functions/1.0.0/modules/feedback.sh")

# Helpers
# -------------------------------------------------------------------------------------------------

function validate_bash_dependency {
  major_version="$(bash --version | head -1 | cut -d ' ' -f 4 | cut -d '.' -f 1)"
  min_major_version="4"

  if [ "${major_version}" -lt "${min_major_version}" ]; then
    throw_error "Your bash major version must be ${min_major_version} or greater"
  fi
}