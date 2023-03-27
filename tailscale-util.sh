#!/bin/bash
echo "Bring TailScale Up or Down u/d"
echo "Or print tailnet status s"
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
if [ $choice == "s" ]; then
  echo ""
  sudo tailscale status
  exit
fi
