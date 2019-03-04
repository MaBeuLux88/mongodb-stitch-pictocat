#!/usr/bin/env bash
stitch-cli login --username=$STITCH_USERNAME --api-key=$STITCH_API_KEY
stitch-cli import --app-id $STITCH_APPID --strategy=replace --path=./Pictocat --include-hosting --reset-cdn-cache -y
stitch-cli logout
