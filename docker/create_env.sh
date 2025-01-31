#!/bin/bash

[ "$(dirname "$0")" != "docker" ] && echo "please use the command with the docker/<CMD> folder" && exit 1

sudo chown -R $(whoami):$(whoami) ./app

sudo cp -f docker/.env.example docker/.env

# requires BASH to use these read commands
read -e -p "Set a NODE version (check available versions at https://hub.docker.com/_/node/tags?name=-alpine) (default 20): " -i 20 NODE_VERSION
read -e -p "Set the host port (default 3000): " -i 3000 HOST_PORT
read -e -p "Set the container port (default 3000): " -i 3000 CONTAINER_PORT

sed -i "s/^NODE_VERSION=.*/NODE_VERSION=$NODE_VERSION/" docker/.env
sed -i "s/^CONTAINER_PORT=.*/CONTAINER_PORT=$CONTAINER_PORT/" docker/.env
sed -i "s/^HOST_PORT=.*/HOST_PORT=$HOST_PORT/" docker/.env

# remove all unnecessary files
sudo rm -f license.md
sudo rm -f readme.md
sudo rm -f .gitignore
sudo rm -Rf .git
