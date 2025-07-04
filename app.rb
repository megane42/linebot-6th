# coding: utf-8
require 'sinatra'
require 'line/bot'
require_relative './lib/linebot_6th'

def client
  @client ||= Line::Bot::Client.new { |config|
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token  = ENV["LINE_CHANNEL_TOKEN"]
  }
end

def text_message(text)
  {
    type: 'text',
    text: text,
  }
end

post '/webhook' do
  body = request.body.read
  signature = request.env['HTTP_X_LINE_SIGNATURE']
  unless client.validate_signature(body, signature)
    error 400 do 'Bad Request' end
  end

  events = client.parse_events_from(body)
  events.each do |event|
    case event
    when Line::Bot::Event::Message
      case event.type
      when Line::Bot::Event::MessageType::Text
        if reply = Linebot6th.make_reply_for(event.message['text'])
          client.reply_message(event['replyToken'], reply.map{ |m| text_message(m) })
        end
      end
    end
  end

  'OK.'
end
