# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'kitchen-zip/version'

Gem::Specification.new do |s|
  s.name          = 'kitchen-zip'
  s.license       = 'Apache-2.0'
  s.version       = Kitchen::Zip::VERSION
  s.authors       = ['Nico Vanelslande']
  s.email         = ['nicolas.vanelslande@gmail.com']
  s.homepage      = 'https://github.com/nicolasvan/kitchen-zip'
  s.summary       = 'Kitchen transport plugin to speed up upload times.'
  candidates = Dir.glob('{lib}/**/*') + ['README.md', 'kitchen-zip.gemspec']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.add_dependency 'test-kitchen', '~> 1.4'
  if RUBY_VERSION >= '2.0'
    s.add_dependency 'net-ssh', '~> 3'
  else
    s.add_dependency 'net-ssh', '~> 2.9'
  end
  s.add_development_dependency 'minitest',  '~> 5.3'
  s.add_development_dependency 'mocha',     '~> 1.1'
  s.add_development_dependency 'simplecov', '~> 0.10'
  s.add_development_dependency 'rake',      '~> 10.4.2'
  s.add_development_dependency 'rubocop',   '~> 0.34'
  s.description = <<-EOF
== DESCRIPTION:

Test Kitchen transport plugin to speed up upload times.

== FEATURES:

Upload tar files over ssh. (Linux only)

EOF
end
