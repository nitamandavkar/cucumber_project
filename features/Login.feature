Feature: Login to redfin

  Scenario: Login to redfin
  	Given I am on the redfin homepage 
    When I click on "Sign In" link
    Then I should see "Sign In" on pop-up page
    When I type email: "nita_bje@yahoo.com"
    When I type password: "Monalisa08"
    When I click on the sign in button
    Then I should see "Nita" on homepage