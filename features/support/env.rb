require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
 
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.redfin.com"
Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new app, browser: :chrome
end
  

