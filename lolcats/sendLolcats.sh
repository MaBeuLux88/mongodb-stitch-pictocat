#!/usr/bin/env bash
for i in {1..15}
do
  start_json='{ "comment" : "This LOLCAT is awesome!", "picture" : { "$binary": { "base64": "';
  base64_image=$(base64 -w 0 lolcat$i.jpg);
  end_json='", "subType":"00"}}}';
  json="${start_json}${base64_image}${end_json}"

  curl -H "Content-Type: application/json" \
  --data-binary @- \
  https://webhooks.mongodb-stitch.com/api/client/v2.0/app/pictocat-kjvkr/service/REST/incoming_webhook/receive-cats?secret=test <<CURL_DATA
$json
CURL_DATA
done
