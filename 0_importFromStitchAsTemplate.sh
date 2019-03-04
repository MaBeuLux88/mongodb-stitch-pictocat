#!/usr/bin/env bash
rm -rf PictocatTemplate
stitch-cli login --username=$STITCH_USERNAME --api-key=$STITCH_API_KEY
stitch-cli export --app-id=$STITCH_APPID --as-template --include-hosting -o ./PictocatTemplate
stitch-cli logout
