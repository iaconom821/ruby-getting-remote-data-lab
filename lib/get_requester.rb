# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @url = url 
    end

    def get_response_body
        response = Net::HTTP.get_response(URI.parse(@url))
        response.body 
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end
