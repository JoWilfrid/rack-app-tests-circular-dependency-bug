# Set the rack environment to `test`
ENV["RACK_ENV"] = "test"

# Require test libraries
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/app'

# Load the app
RACK_APP = Rack::Builder.parse_file('config.ru').first
