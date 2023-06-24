#!/bin/bash

. /etc/motion/scripts/my_vars.sh

curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendPhoto" -F caption="ALERT: $1 $2" -F chat_id="${CHANNEL}" -F photo="@$3"
