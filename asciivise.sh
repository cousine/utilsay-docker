#!/usr/bin/env bash

docker-compose run util-say /util-say/ponytool --import image --magnified 2 --file /images/$1.png --balloon n --export ponysay --chroma 1 --platform xterm --right 5
