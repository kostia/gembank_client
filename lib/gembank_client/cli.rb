require 'choice'
require 'gembank_client/resource'
require 'singleton'

module GembankClient
  class CLI
    include Singleton

    def self.run
      instance.run
    end

    def run
      Choice.options do
        banner('Usage: gembank_client ACTION --key=KEY --file=GEM_FILE [--url=URL]')
        header('Available actions: release')
        header('Options:')
        option(:key, :required => true) do
          short('-k')
          long('--key=KEY')
          desc('Push key (required)')
        end
        option(:file, :required => true) do
          short('-f')
          long('--file=FILE')
          desc('Gem file (required)')
        end
        option(:url) do
          short('-u')
          long('--url=URL')
          desc('Gembank URL')
        end
      end

      action = ARGV.first
      puts(Choice.help) unless action

      resource = GembankClient::Resource.new(Choice.choices[:key], Choice.choices[:file],
          Choice.choices[:url])

      case action
      when 'release'
        resource.release
      else
        puts("Unknown action '#{action}'\n")
        puts(Choice.help)
      end
    end
  end
end
