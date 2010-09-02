ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "capybara/rails"

module ActionController
  class IntegrationTest
    include Capybara
  end
end

Capybara.javascript_driver = :envjs
Capybara.default_wait_time = 6
Capybara.default_host = "lvh.me"
Capybara.app_host = "http://lvh.me:9887"
