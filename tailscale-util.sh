#!/bin/bash
echo "Bring TailScale Up or Down? u/d?"
read choice
if [ $choice == "u" ]; then
  sudo tailscale up
  echo "Connected to Tailnet"
  exit
fi
if [ $choice == "d" ]; then
  sudo tailscale down
  echo "Disconnected from Tailnet"
  exit 
fi
