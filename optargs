#!/bin/bash

while getopts ":a:b:c" opt; do
  case ${opt} in
    a )
      echo "Option a is enabled with value: $OPTARG"
      ;;
    b )
      echo "Option b is enabled with value: $OPTARG"
      ;;
    c )
      echo "Option c is enabled"
      ;;
    \? )
      echo "Invalid option: $OPTARG"
      ;;
    : )
      echo "Option -$OPTARG requires an argument"
      ;;
  esac
done
