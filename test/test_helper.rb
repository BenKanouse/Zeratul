ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/autorun"
require "minitest/rails"
require "minitest/rails/capybara"
require "mocha/setup"
#require "minitest/pride"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
  # i guess i need more helper methods here
end

# class ActionDispatch::IntegrationTest
#   Rails.application.routes.url_helpers
#   Capybara::RSpecMatchers
#   Capybara::DSL
# end
