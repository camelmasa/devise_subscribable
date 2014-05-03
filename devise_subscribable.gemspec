# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'devise_subscribable/version'

Gem::Specification.new do |s|
  s.name         = "devise_subscribable"
  s.version      = DeviseSubscribable::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["camelmasa"]
  s.email        = ["camelmasa@gmail.com"]
  s.homepage     = "https://github.com/camelmasa/devise_subscribable"
  s.summary      = ""
  s.description  = ""
  s.license      = 'MIT'
  s.files        = `git ls-files {app,config,lib}`.split("\n") + %w[LICENSE]
  s.require_path = "lib"

  s.required_ruby_version     = '>= 1.8.6'
  s.required_rubygems_version = '>= 1.3.6'

  s.add_runtime_dependency('devise', '>= 3.2.0')
end
