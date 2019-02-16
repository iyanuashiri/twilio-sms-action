# twilio-sms-action


## Usage

The `args` represent the recipient and the contents of the message. 

For example:

```workflow
workflow "Send SMS On Push" {
  on = "push"
  resolves = ["notification"]
}

action "notification" {
    uses = "iyanuashiri/twilio-sms-action@master"
    secrets = [
        "TWILIO_ACCOUNT_SID",
        "TWILIO_AUTH_TOKEN",
        "TWILIO_CALLER_ID"
    ]
    args = "15551234567 New pull on $GITHUB_REPOSITORY from $GITHUB_ACTOR."
}
```

`will send `New pull on $GITHUB_REPOSITORY from $GITHUB_ACTOR` to `15551234567`. 

`
