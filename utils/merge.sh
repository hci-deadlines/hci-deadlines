#!/bin/bash
# get current directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
# merge files
awk 'FNR==1{print ""}1' $SCRIPT_DIR/../_data/conferences/*.yml > $SCRIPT_DIR/../_data/autogen-conferences.yml
