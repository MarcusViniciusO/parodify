require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helpers"
require_relative "actions"

World(Helpers)
World(Actions)

Capybara.configure do |config|
  #config.default_driver = :selenium_chrome
  config.default_driver = :selenium
  #config.default_driver = :rack_test
  #config.default_driver = :selenium_headless
  #config.default_driver = :selenium_chrome_headless
  config.default_max_wait_time = 25
  config.app_host = "https://parodify.herokuapp.com"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
