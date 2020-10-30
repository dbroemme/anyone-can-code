require 'json'
require 'http'

output = HTTP.get("https://blockchain.info/ticker").body
parsed = JSON.parse(output)
price = parsed["USD"]["15m"].to_f
puts "The price of Bitcoin is $#{price}"

