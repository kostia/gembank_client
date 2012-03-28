require File.expand_path('../lib/gembank/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'gembank'
  gem.version = Gembank::VERSION
  gem.description = %q{Client for Gembank}
  gem.summary = %q{Client for Gembank}
  gem.homepage = 'https://github.com/kostia/gembank'
  gem.authors = ["Kostiantyn Kahanskyi"]
  gem.email = %w(kostiantyn.kahanskyi@googlemail.com)
  gem.files = `git ls-files`.split("\n")
  gem.require_paths = %w(lib)
  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.required_ruby_version = '>= 1.9.3'
end
