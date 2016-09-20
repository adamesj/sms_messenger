require 'sinatra'
require 'twilio-ruby'

get '/' do
  erb :layout
end

post '/receive_sms' do
  content_type 'text/xml'

  response = Twilio::TwiML::Response.new do |r|
    r.Message 'Hey thanks for the message!'
  end

  response.to_xml
end