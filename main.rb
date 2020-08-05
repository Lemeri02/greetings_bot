require 'json'
require 'dotenv/load'
require 'telegram/bot'

DATA = JSON.parse(File.read("#{__dir__}/data/variants.json"), symbolize_names: true).freeze
GREETINGS = DATA[:greetings].freeze
TOKEN = ENV['TELEGRAM_BOT_API_TOKEN'].freeze

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case
    when message.text == '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Вы отправии старт")
    when message.new_chat_members.any?
      user_name = message.new_chat_members.last&.first_name
      bot.api.sendMessage(chat_id: message.chat.id, text: "#{GREETINGS.sample}, #{user_name}")
    when message.text&.downcase&.include?('торрент' || 'торрентах' || 'торрентов')
      bot.api.sendMessage(chat_id: message.chat.id, text: "Такс, звоню твоему куратору из ФСБ")
    end
  end
end
