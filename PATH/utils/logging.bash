#!/usr/bin/env bash
# Utility functions for pretty logging of messages.

# Determines if logs should be written to system journal using the 'logger' command.
# This variable is meant to be set by the importing script.
SYSTEM_LOGGER_ENABLED="${SYSTEM_LOGGER_ENABLED:=false}"

# ANSI sequence representing the color (blue) to be used by INFO level logging.
__ECHO_INFO_ANSI_COLOR='\033[0;34m'

# ANSI sequence representing the color (yellow) to be used by WARN level logging.
__ECHO_WARN_ANSI_COLOR='\033[1;33m'

# ANSI sequence representing the color (red) to be used by ERROR level logging.
__ECHO_ERROR_ANSI_COLOR='\033[0;31m'

# ANSI sequence used for resetting the active color.
__ANSI_RESET='\033[0m'

# Path of the script, note it's not always available and may be unreliable.
# For more information see https://stackoverflow.com/a/11114547/5922757
__SCRIPTPATH="$(realpath $0)"

# Prints the current date and time.
function __echoDateTime { date +'%F %H:%M:%S'; }

# Prints given message in a specified color.
# Parameters:
#  ${1} - ANSI color sequence to be used for printing
#  ${2} - log level of the message
#  ${@} - multiline log message, each line will be printed separately
function __echoColor {
  color="${1}"
  logLevel="${2}"
  shift; shift;
  (echo -e $@ | xargs -d '\n' >&2 printf "${color}${logLevel}$(__echoDateTime) : %s${__ANSI_RESET}\n")
  if [[ "${SYSTEM_LOGGER_ENABLED}" == 'true' ]]; then
    logger "${__SCRIPTPATH} ${logLevel}$(__echoDateTime) : $@"
  fi
}

# Prints given message with INFO log level using echoColor function.
# Parameters:
#  ${@} - multiline log message
function echoInfo  { __echoColor "${__ECHO_INFO_ANSI_COLOR}"  '[INFO ] ' $@; }

# Prints given message with WARN log level using echoColor function.
# Parameters:
#  ${@} - multiline log message
function echoWarn  { __echoColor "${__ECHO_WARN_ANSI_COLOR}"  '[WARN ] ' $@; }

# Prints given message with ERROR log level using echoColor function.
# Parameters:
#  ${@} - multiline log message
function echoError { __echoColor "${__ECHO_ERROR_ANSI_COLOR}" '[ERROR] ' $@; }
