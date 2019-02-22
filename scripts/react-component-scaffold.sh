#!/bin/bash

# default values
isConnected=true
hasStyles=true

echo "Choose component's name (optionally you can choose where will be create it):"
read folderName

if [ -z $# ]
  then
    echo 'A component name is mandatory'.
    exit 1
fi

echo "Is your component connected? 📡 (type Enter to confirm otherwise type \"no\")"
read connectedInput

if [ "$connectedInput" == "no" ];
  then
    isConnected=false
fi

echo "Do you want to include (scss) styles? 💅 (type Enter to confirm otherwise type \"no\")"
read stylesInput

if [ "$stylesInput" == "no" ];
  then
    hasStyles=false
fi

if ! type touch &> /dev/null
  then
  echo "Your system doesn't support this script. ❌"
  exit 1
fi

mkdir $folderName
touch "$folderName/index.js"
touch "$folderName/component.js"

if [ $isConnected = true ]
  then
    touch "$folderName/initial-state.js"
    touch "$folderName/actions.js"
    touch "$folderName/reducers.js"
fi

if [ $hasStyles = true ]
  then
    touch "$folderName/styles.scss"
fi

echo "[INFO] Your scaffold is ready! 🎉"
