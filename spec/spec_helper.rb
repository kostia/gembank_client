require 'rake'

include Rake::DSL

FileList['lib/**/*.rb'].each { |f| load f }
