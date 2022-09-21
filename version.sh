#!/bin/bash
set -eu

# Can you return data instead of exit codes from functions in bash?
function get_latest_version() {
	echo "3.2.28"
}
function get_oldest_version() {
	echo "0.0.1"
}

NEWEST=$(get_latest_version)
OLDEST=$(get_oldest_version)

# We can achieve it with Command Substitution, the syntax `$()`
echo "the current version of foo is $NEWEST"
echo "the oldest version of foo is $OLDEST"
