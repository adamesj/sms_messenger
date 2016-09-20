require 'twilio-ruby'

account_sid = 'ACc2833364b27ec907833f5075df828a0d'
auth_token = '4746ca9cd0c60159e9409a5e3e88b608'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create(
  from: '+19177465953',
  to: '+13476057360',
  body: 'Robot invasion! Reply back with any sightings.'
)