#!/bin/bash

. /etc/motion/scripts/my_vars.sh

curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" -F chat_id="${CHANNEL}" -F text="ALERT: $1"
