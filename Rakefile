# encoding: UTF-8

require 'rubocop/rake_task'
require 'rake/testtask'

task default: [:rubocop, :unit]

RuboCop::RakeTask.new

Rake::TestTask.new(:unit) do |t|
  t.libs.push 'lib'
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end
