# frozen_string_literal: true

require File.expand_path('lib/crowdin-api/client/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'crowdin-api'
  gem.version     = Crowdin::Client::VERSION
  gem.authors     = ['Crowdin']
  gem.email       = ['support@crowdin.net']
  gem.homepage    = 'https://github.com/crowdin/crowdin-api/'
  gem.summary     = 'Client library to manage translations on Crowdin'
  gem.description = 'Ruby Client for the Crowdin API. Documentation - https://support.crowdin.com/api/v2/.'
  gem.license     = 'MIT'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.bindir        = 'bin'
  gem.executables   << 'crowdin-console'

  gem.add_runtime_dependency 'open-uri', '>= 0.1.0', '< 0.2.0'
  gem.add_runtime_dependency 'rest-client', '>= 2.0.0', '< 2.1.0'

  gem.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.32'
  gem.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  gem.add_development_dependency 'rspec', '~> 3.10'
  gem.add_development_dependency 'rubocop', '~> 1.23'
  gem.add_development_dependency 'sinatra', '~> 2.1'
  gem.add_development_dependency 'webmock', '~> 3.14'
end
