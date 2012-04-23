require 'rest_client'

module GembankClient
  class Resource
    DEFAULT_URL = 'https://gembank.org'

    def initialize(key, file, url = DEFAULT_URL)
      @key, @file, @url = key, file, url
    end

    def release
      RestClient.post(url, :gem => File.new(@file)) do |response, request, result, &block|
        handle(response, request, result, &block)
      end
    end

    private

    def url
      "#{@url}/push/#{@key}"
    end

    def handle(response, request, result, &block)
      case response.code
      when 200, 202
        puts(response.body)
      when 403, 404, 412
        puts("Server responded with status code #{response.code}")
        puts(response.body) if response.body and response.body.size > 0
        exit response.code
      else
        response.return!(request, result, &block)
      end
    end
  end
end
