Feature: Search houses in Orlando,FL

	Scenario: Search houses in Orlando,FL
		Given I am on redfin homepage 
		When I click on "Find a Home" tab
		When I type "Orlando, Fl" and click
		Then I should see the results with title "Orlando Real Estate"
		When I click on Filters
		When I select minimum beds = "2"
		When I select minimum baths = "2"
		When I select ninimum year built = "2000"
		When I click "Update Search"
		Then I should see the results as per my search criteria
