#!/bin/bash
set -eu

## Can you return data instead of exit codes from functions in bash?
#function get_latest_version() {
#	echo "3.2.28"
#}
#function get_oldest_version() {
#	echo "0.0.1"
#}

#NEWEST=$(get_latest_version)
#OLDEST=$(get_oldest_version)

## We can achieve it with Command Substitution, the syntax `$()`
#echo "the current version of foo is $NEWEST"
#echo "the oldest version of foo is $OLDEST"

# Redirect status or error messages to STDERR or standard error which is stream 2. Notice how we leave echo "3.2.28" in STDOUT or stream 1 since we want to "return" in the command substitution below the function definition.
function get_latest_version() {
	echo "Resolving host"		1>&2
	echo "Starting connection"	1>&2
	echo "Downloading JSON"		1>&2
	echo "Extracting version"	1>&2
	echo "3.2.28"
}

echo "the current version of foo is $(get_latest_version 2>/dev/null)"
