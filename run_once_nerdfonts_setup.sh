#!/bin/bash

sudo apt-get update && sudo apt-get install fontconfig

curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash

getnf -i FiraCode

fc-cache

