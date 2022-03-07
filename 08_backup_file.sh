#!/bin/bash

## check if the given file exists
if [[ -f $1 ]]; then
  if [[ -f $1.bak.$(date +"%Y%m%d") ]]; then
    echo "File $1.bak.$(date +"%Y%m%d") already exists, do you want to overrite it? (Y)es, (n)o"
    read decision
    case $decision in
    y)
      echo "Overriting previous file"
      rm $1.bak.$(date +"%Y%m%d")
      cp $1 $1.bak.$(date +"%Y%m%d")
      echo "File Backup Complete"
      ;;
    n) echo "File not replaced" ;;
    *)
      echo "Overriting previous file"
      rm $1.bak.$(date +"%Y%m%d")
      cp $1 $1.bak.$(date +"%Y%m%d")
      echo "File Backup Complete"
      ;;
    esac
  else
    cp $1 $1.bak.$(date +"%Y%m%d")
    echo "File Backup complete"
  fi
else
  echo "File does not exist."

fi
