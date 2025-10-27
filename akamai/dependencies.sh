#!/bin/bash

# Init
RETURNCODE=0

# Checks
BC="$(which 'bc' 2>/dev/null)"
if [ -z "${BC}" ]; then :; echo "Error: bc not installed"; RETURNCODE=1; fi;

# Return
exit "${RETURNCODE}"