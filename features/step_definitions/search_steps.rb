require 'capybara/cucumber'
require 'rspec/expectations'
Capybara.default_driver = :selenium

Given(/^I am on redfin homepage$/) do
      visit 'https://www.redfin.com'
end

When (/^I click on "([^\"]*)" tab$/) do |arg|
	find(:xpath, '//h2[@class="title current"]').click
end

When (/^I type "([^\"]*)" and click$/) do |arg1|
	find(:xpath, '//input[@title="City, Address, School, Agent, ZIP"]').set(arg1).click
end

Then (/^I should see the results with title "([^\"]*)"$/) do |text|
	expect(page).to have_content(text)
end

When (/^I click on Filters$/) do 
	find(:xpath, '//span[text()="Filters"]').click
end

When (/^I select minimum beds = "([^\"]*)"$/) do |beds|
	find(:xpath, '//select[@name="miniBeds"]').click
	select(beds, :from=>"miniBeds")
end

When (/^I select minimum baths = "([^\"]*)"$/) do |baths|
	find(:xpath, '//select[@name="baths"]').click
	select(baths, :from=>"baths")
end

When (/^I select minimum Sqft = "([^\"]*)"$/) do |sqft|
	find(:xpath, '//select[@name="lotSqftMin"]').click
	select(year, :from=>"sqft")
end

When (/^I click "([^\"]*)"$/) do |arg2|
	find(:xpath, '//span[text()="{0}"]'.format(arg2)).click
end

Then (/^I should see the results as per my search criteria$/) do
	while ("column column_4 col_beds") do
		check("column column_4 col_beds")> 2

	while ("column column_5 col_baths") do
		check("column column_5 col_baths")> 2

	while ("column column_6 col_sqft") do
		check("column column_6 col_sqft")> 2000

end