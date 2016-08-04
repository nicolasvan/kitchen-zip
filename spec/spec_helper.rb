# encoding: utf-8
require 'simplecov'

require 'minitest'
require 'minitest/autorun'
require 'mocha/mini_test'

# Filter out our tests from code coverage
SimpleCov.start do
  add_filter '/spec/'
  add_filter '/bundle/'
end
