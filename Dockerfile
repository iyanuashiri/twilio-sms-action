FROM python:3

LABEL "com.github.actions.name"="Twilio Send SMS"
LABEL "com.github.actions.description"="Send an SMS using Twilio."
LABEL "com.github.actions.icon"="smartphone"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/iyanuashiri/twilio-sms-action"
LABEL "maintainer"="Iyanu Ajao <ajaoiyanu@gmail.com>"


ADD send_sms.py

RUN pip install twilio

CMD [ "python", "./send_sms.py" ]


ENTRYPOINT ["send_sms"]
