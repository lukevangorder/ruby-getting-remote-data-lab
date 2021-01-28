# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
    attr_accessor :url
    def initialize(url)
        @url = URI.parse(url)
    end
    def get_response_body
        Net::HTTP.get_response(@url).body
    end
    def parse_json
        JSON.parse(self.get_response_body)
    end
end