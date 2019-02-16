#!/bin/sh
set -eu

if [[ -z "$TWILIO_AUTH_TOKEN" ]]; then
  echo "Set the TWILIO_AUTH_TOKEN secret."
  exit 1
fi


curl -X POST -d "$*" \
    -d "From=${TWILIO_CALLER_ID}" -d "To=${RECIPIENT_NUMBER}" \
    "https://api.twilio.com/2010-04-01/Accounts/${TWILIO_ACCOUNT_SID}/Messages" \
    -u "${TWILIO_ACCOUNT_SID}:${TWILIO_AUTH_TOKEN}"
