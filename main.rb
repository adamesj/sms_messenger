require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
require 'dotenv'

account_sid = 'ACc2833364b27ec907833f5075df828a0d'
auth_token = '4746ca9cd0c60159e9409a5e3e88b608'

Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end

get '/' do
  erb :home
end

get '/index' do
  erb :index
end

get '/send_sms' do
  erb :layout
end

get '/confirmation' do
  erb :confirmation
end

post '/send_sms' do
  to = params[:recipient_tel]
  message = params[:message]

  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.messages.create({
    to: '+1' + to,
    from: '+19177465953',
    body: message
  })

  redirect :confirmation
end

post '/receive_sms' do
  content_type 'text/xml'

  response = Twilio::TwiML::Response.new do |r|
    r.Message 'Hey thanks for the message!'
  end

  response.to_xml
end

get '/messages/received' do
  client = Twilio::REST::Client.new
  @messages = client.messages.list(to: '+19177465953')

  erb :'messages/received'
end