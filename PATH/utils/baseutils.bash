#!/usr/bin/env bash
# General purpose utility functions.

source "$(dirname "$(realpath "${0}")")/utils/logging.bash"

# Verifies if given command exists; on failure exits with status code 1.
# Example:
#  dependencyExists 'curl'
# Parameters:
#  ${1} - name of the command
function dependencyExists {
  dependencyName="${1}"
  if [[ "$(command -v "${dependencyName}")" == '' ]]; then
    echoError "dependency '${dependencyName}' is not installed, exiting"
    exit 1
  fi
}

# Verifies if given value matches pattern; on failure exists with status code 1.
# Useful for validating input parameters.
# Example:
#  requireMatch 'email address' "${email}" '^.+@.+$'
# Paramters:
#  ${1} - human-readable name of the value to match
#  ${2} - value to match
#  ${3} - regular expression to match against
function requireMatch {
  name="${1}"
  value="${2}"
  pattern="${3}"
  if [[ "$(echo "${value}" | grep -oE "${pattern}")" != "${value}" ]]; then
    echoError "invalid ${name} '${value}'; must match '${pattern}'"
    exit 1
  fi
}
