#!/bin/zsh

##########################
# 0. Auxiliary functions
#

##########################
# 1. PARSE INPUT
zparseopts -D -verbose=verbose -env:=env 
verbose="${verbose[1]}"
env="${env[2]:-$CUSTOMER_ENV}"

help_message="Syntax is: $(basename $0) [-verbose] [-env env.ironm.ent] <++>"

if [[ $# < <++> ]]; then
	echo "ERROR: invalid syntax." >&2
	echo "$help_message" >&2
	exit 2
fi

if [[ $verbose ]]; then echo "Verbose mode" >/dev/stderr ; fi
