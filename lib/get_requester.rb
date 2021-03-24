# Write your code here
require 'open-uri'
require 'json'
require 'net/http'

class GetRequester
    attr_accessor :stringURL

    def initialize(stringURL)
        @stringURL = stringURL
    end

    def get_response_body
    #sends GET request to the url passed in
        uri = URI.parse(stringURL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
    JSON.parse(self.get_response_body)
    end

   
end