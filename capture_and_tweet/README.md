# About
Script to take screen capture on web page and tweet the image.

## Requirements
* [Twitter Application](https://apps.twitter.com/)
* [Twitter Ruby Gem](https://github.com/sferik/twitter)
* [PhantomJS](http://phantomjs.org/)

## Configurations
Export your twitter application configuration or edit directly from **capture_and_tweet.rb** file
```
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end
```

## How to Use
```
ruby capture_and_tweet.rb
```
It will ask status message and domain name, example:
```
Status: Hello world with pic
Domain: railsmine.net
```
Wait until it's done. :)
