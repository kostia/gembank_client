require 'singleton'
require 'thor'

require 'gembank_client/resource'

module GembankClient
  class CLI < Thor
    desc('release KEY FILE', 'Release FILE using KEY')
    method_option(:url, :default => 'https://gembank.org')
    def release(key, file)
      GembankClient::Resource.new(key, file, options[:url]).release
    end
  end
end
