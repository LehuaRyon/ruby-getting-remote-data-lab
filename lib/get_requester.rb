# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

# url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

class GetRequester
    attr_accessor :url

    def initialize(url)   
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end
end

