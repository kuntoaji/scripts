# Author: Kunto Aji. K
# Web: railsmine.net

#!/usr/bin/env ruby

require 'twitter'

print "Status: "
status = gets.chomp

print "Domain: "
domain = gets.chomp

image = domain + ".png"
`phantomjs screen_capture.js #{domain}` unless File.exists?(image)

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

client.update_with_media(status, File.new(image))
puts "Done!"
