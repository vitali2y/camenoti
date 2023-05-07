#!/bin/bash

curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" -F chat_id="${CHANNEL}" -F text="ALERT: $1"
