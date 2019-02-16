#!/bin/sh
set -eu

if [[ -z "$TWILIO_AUTH_TOKEN" ]]; then
  echo "Set the TWILIO_AUTH_TOKEN secret."
  exit 1
fi

if [[ -z "$TWILIO_ACCOUNT_SID" ]]; then
  echo "Set the TWILIO_ACCOUNT_SID secret."
  exit 1
fi

if [[ -z "$TWILIO_CALLER_ID" ]]; then
  echo "Set the TWILIO_CALLER_ID secret."
  exit 1
fi

if [[ -z "$RECIPIENT_NUMBER" ]]; then
  echo "Set the RECIPIENT_NUMBER secret."
  exit 1
fi


curl -X POST https://api.twilio.com/2010-04-01/Accounts/${TWILIO_ACCOUNT_SID}/Messages.json \
--data-urlencode "From=${TWILIO_CALLER_ID}" \
--data-urlencode "Body=$*" \
--data-urlencode "To=${RECIPIENT_NUMBER}" \
-u ${TWILIO_ACCOUNT_SID}:${TWILIO_AUTH_TOKEN}
