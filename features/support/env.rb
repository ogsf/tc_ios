require 'rubygems'
require 'calabash-cucumber/cucumber'
require 'rspec/expectations'
require 'pry'
require 'json'
require 'httparty'
require 'recursive-open-struct'

FIXTURE = RecursiveOpenStruct.new(YAML.load_file("./features/support/fixture.yml"))