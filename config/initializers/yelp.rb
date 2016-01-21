require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = ENV["YELP_Consumer_Key"]
  config.consumer_secret = ENV["YELP_Consumer_Secret"]
  config.token = ENV["YELP_Token"]
  config.token_secret = ENV["YELP_Token_Secret"]

end
