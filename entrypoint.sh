#!/usr/bin/env sh

if [ -z "$JSON" ] ; then
  cat >&2 <<EOF
ERROR : $JSON was empty or not set. This variable should contain the data 
        that is to be transformed into outputs.
EOF
  exit 1
fi 

# Output the values of all top-level keys in $JSON.  Nested values will be 
# returned as JSON.  Brutal but sufficient in most cases.
echo "$JSON"| jq -r 'keys[]' | while read -r key; do
  echo "::set-output name=${key}::$(echo "$JSON" | jq -r ."${key}")"
done
