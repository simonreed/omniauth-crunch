# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'omniauth-crunch/version'

# p OmniAuth::Crunch::VERSION
Gem::Specification.new do |s|
  s.name        = 'omniauth-crunch'
  s.version     = OmniAuth::Crunch::VERSION
  s.authors     = ['Simon Reed']
  s.email       = ['simonpreed@gmail.com']
  s.homepage    = 'https://github.com/simonreed/omniauth-crunch'
  s.summary     = 'OmniAuth strategy for Crunch.co.uk'
  s.description = 'OmniAuth strategy for Crunch.co.uk'

  s.rubyforge_project = 'omniauth-crunch'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f|
    File.basename(f)
  }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_runtime_dependency 'multi_json'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
