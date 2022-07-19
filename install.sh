#!/bin/bash

echo "this will just take a moment"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
wait
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
wait
sudo apt update && sudo apt install signal-desktop
wait
echo "done"
