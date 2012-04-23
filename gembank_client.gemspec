require File.expand_path('../lib/gembank_client/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'gembank_client'
  gem.version = GembankClient::VERSION
  gem.description = File.read(File.expand_path('../README.txt', __FILE__))
  gem.summary = %q{CL Client for gembank.org}
  gem.homepage = 'https://github.com/kostia/gembank_client'
  gem.authors = ['Kostiantyn Kahanskyi']
  gem.email = %w[info@gembank.org]
  gem.files = `git ls-files`.split("\n")
  gem.require_paths = %w[lib]
  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.add_dependency('choice')
  gem.add_dependency('rest-client')
  gem.add_development_dependency('pry')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
end
