FROM debian:9.5-slim

LABEL "com.github.actions.name"="Twilio Send SMS"
LABEL "com.github.actions.description"="Send an SMS using Twilio."
LABEL "com.github.actions.icon"="smartphone"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/iyanuashiri/twilio-sms-action"
LABEL "maintainer"="Iyanu Ajao <ajaoiyanu@gmail.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
