require 'capybara/cucumber'
require 'rspec/expectations'
Capybara.default_driver = :selenium

Given(/^I am on the redfin homepage$/) do
        visit 'https://www.redfin.com'
end

When (/^I click on "([^\"]*)" link$/) do |arg|
    find('span.hoverWrapper', text: arg).click
end

Then (/^I should see "([^\"]*)" on pop-up page$/) do |arg1|
	expect(page).to have_content arg1
end

When(/^I type email: "([^\"]*)"$/) do |uname|
	fill_in 'Email', :with => uname
end

When(/^I type password: "([^\"]*)"$/) do |pwd|
	fill_in 'Password', :with => pwd
end

When(/^I click on the sign in button$/) do
	click_button("Sign In")
end

Then(/^I should see "([^\"]*)" on homepage$/) do |arg2|
	expect(page).to have_content arg2
end
