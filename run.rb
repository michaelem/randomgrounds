#!/usr/bin/env ruby -w

require 'dotenv/load'
require 'discordrb'

require './lib/erangel'

bot = Discordrb::Bot.new token: ENV["TOKEN"], client_id: ENV["CLIENT_ID"]

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(content: '!random') do |event|
  event.respond "Humans, I have decided with an initiative of #{rand(100)} that you should go to: #{Erangel.random_coordinate}"
end

bot.message(content: '!random place') do |event|
  event.respond "Humans, I have decided with an initiative of #{rand(100)} that you should go to: #{Erangel.random_place}"
end

bot.run
