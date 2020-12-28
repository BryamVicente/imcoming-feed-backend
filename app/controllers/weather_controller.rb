# require 'uri'
# require 'net/http'
# require 'openssl'
# require 'json'
# require 'pry'

# class WeatherController < ApplicationController

   
#     def index 

#     url = URI("https://weatherbit-v1-mashape.p.rapidapi.com/forecast/3hourly?lat=40.714&lon=-74.006&apiKey=")

#     http = Net::HTTP.new(url.host, url.port)
#     http.use_ssl = true
#     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
#     request = Net::HTTP::Get.new(url)
#     request["x-rapidapi-key"] = ''
#     request["x-rapidapi-host"] = 'weatherbit-v1-mashape.p.rapidapi.com'
    
#     response = http.request(request)
#     response_body = response.body 
#     json_response = JSON.parse(response_body)

#     render json: json_response
#     end 

   

   



# end
