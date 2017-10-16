#!/usr/bin/env ruby -w

require 'dotenv/load'
require 'discordrb'

bot = Discordrb::Bot.new token: ENV["TOKEN"], client_id: ENV["CLIENT_ID"]

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(content: '!random') do |event|
  coordinates = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'].sample + ['J', 'K', 'L', 'M', 'N', 'O', 'P'].sample
  event.respond "Humans, I have decided with an initiative of #{rand(100)} that you should go to: #{coordinates}"
end

bot.run
