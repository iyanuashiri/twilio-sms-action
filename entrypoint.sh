#!/bin/sh

set -eu

curl -X POST https://api.twilio.com/2010-04-01/Accounts/${TWILIO_ACCOUNT_SID}/Messages.json \
--data-urlencode "From=${TWILIO_CALLER_ID}" \
--data-urlencode "Body=$*" \
--data-urlencode "To=${RECIPIENT_NUMBER}" \
-u ${TWILIO_ACCOUNT_SID}:${TWILIO_AUTH_TOKEN}
