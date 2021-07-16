# frozen_string_literal: true

require 'capybara/cucumber'
require 'dotenv/load'
require 'require_all'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'site_prism'

require_all 'page_objects/sections/'
require_all 'page_objects/pages/'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1200,1000])
end

Capybara.ignore_hidden_elements = false
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
