#!/bin/bash

URL="https://guvi.in"

status_code=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "HTTP Status Code: $status_code"

if [ "$status_code" -eq 200 ]; then
    echo "Success: Website is reachable"
else
    echo "Failure: Issue reaching website"
fi

