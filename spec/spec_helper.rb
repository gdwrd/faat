require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

# CodeClimate should be first
require 'rails'
require 'faat'
require 'support/model'