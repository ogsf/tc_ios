$LOAD_PATH.unshift *Dir.glob(File.expand_path("features"))

require 'tc_sells_app'
require 'calabash-cucumber/cucumber'
require 'rubygems'
require 'rspec/expectations'
require 'pry'
require 'json'
require 'httparty'
require 'recursive-open-struct'

FIXTURE = RecursiveOpenStruct.new(YAML.load_file("./features/support/fixture.yml"))

Before do
  @app = TcSellsApp.new(self)
end
