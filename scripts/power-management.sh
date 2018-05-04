#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

case "$1" in
  "off")
    printf "%s\n" "Shutting down..."
    shutdown -h now
  ;;

  "restart")
    printf "%s\n" "Restarting..."
    shutdown -r now
  ;;

  "sleep")
    printf "%s\n" "Putting to sleep..."
    pmset sleepnow
  ;;

  *)
    printf "%s\n" "Option not supported. Supported commands: off, restart, sleep."
esac
