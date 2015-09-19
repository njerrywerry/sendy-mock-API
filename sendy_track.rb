# encoding: UTF-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'

values = '{
  "command": "track",
  "data": {
    "api_key": "w38CMeQCB88sUkGqbTMm",
    "api_username": "personal",
    "order_no": "AA23Z2946"
  }
}'

headers = {
  :content_type => 'application/json'
}

response = RestClient.post 'http://test.sendy.co.ke/v1/api/#request', values, headers
puts response
