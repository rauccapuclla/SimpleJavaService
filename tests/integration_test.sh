#!/usr/bin/env bash

respuesta=$(curl -s http://localhost:8080)

if [ ! -z "$respuesta" ]; then
  if [ "$respuesta" == "Simple Java Service version 1" ]; then
    echo "STATUS: Success"
    echo "Value : $respuesta"
  else
    echo "STATUS: Failed"
    echo "Value : $respuesta"
  fi
else
  echo "No recibi ninguna respuesta"
fi
