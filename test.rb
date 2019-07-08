#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(:host => "localhost", :user => "admin", :password => "admin")
connection.start

channel = connection.create_channel

queue = channel.queue('hello')
node
channel.default_exchange.publish('Hello World!', routing_key: queue.name)
puts " [x] Sent 'Hello World!'"

onnection.close