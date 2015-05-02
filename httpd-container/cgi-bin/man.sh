#!/bin/bash

## Source of urlDec: 
# https://marc.waeckerlin.org/computer/blog/parsing_of_query_string_in_bash_cgi_scripts
#
# Decodes an URL-string
# an URL encoding has "+" instead of spaces
# and no special characters but "%HEX"
function urlDec() {
  local value=${*//+/%20}                   # replace +-spaces by %20 (hex)
  for part in ${value//%/ \\x}; do          # split at % prepend \x for printf
    printf "%b%s" "${part:0:4}" "${part:4}" # output decoded char
  done
}

function usageError() {
cat <<EOF
Status: 400
Content-Type: text/html

<html>
  <body>
    <h1>Missing Command Name</h1>
    <p>You have to supply the name of the command as the URL's query string.</p>
  </body>
</html>
EOF
exit 1
}

if [ -z "${QUERY_STRING}" ] ; then
  usageError
fi

MAN2HTML="man2html -H ${HTTP_HOST} -M ${SCRIPT_NAME} -q"

DECODED_QUERY="$(urlDec ${QUERY_STRING})"
MANFILE=$(man -w ${DECODED_QUERY})

${MAN2HTML} "${MANFILE}"
