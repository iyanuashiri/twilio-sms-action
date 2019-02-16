from twilio.rest import Client


account_sid = config('ACCOUNT_SID')
auth_token = config('AUTH_TOKEN')
client = Client(account_sid, auth_token)


def send_sms(body, from_, to):
    message = client.messages.create(
        body=body,
        from_=from_,
        to=to
    )

    return message.sid
