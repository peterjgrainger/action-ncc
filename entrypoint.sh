#!/bin/sh -l

if test -f $1 ; then
  ncc build $1
  exit 0
else
  echo "$1 does not exist. Make sure you used the checkout action and that if your entry file is not src/index.js that the custom entry-file argument is set in the workflow yml file."
  exit 1
fi
