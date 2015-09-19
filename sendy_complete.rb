# encoding: UTF-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'

values = '{
  "command": "request",
  "data": {
    "api_key": "mysendykey",
    "api_username": "mysendyusername",
    "from": {
      "from_name": "Green House",
      "from_lat": -1.300577,
      "from_long": 36.78183,
      "from_description": ""
    },
    "to": {
      "to_name": "KICC",
      "to_lat": -1.28869,
      "to_long": 36.823363,
      "to_description": ""
    },
    "recepient": {
      "recepient_name": "Evanson",
      "recepient_phone": "0723680311",
      "recepient_email": "evansonbiwot@gmail.com"
    },
    "delivery_details": {
      "pick_up_date": "2016-04-20 12:12:12",
      "collect_payment": {
        "status": false,
        "pay_method": 0,
        "amount": 10
      },
      "return": true,
      "note": " Sample note",
      "note_status": true,
      "request_type": "delivery"
    }
  }
}'

headers = {
  :content_type => 'application/json'
}

response = RestClient.post 'http://test.sendy.co.ke/v1/api/#complete', values, headers
puts response
