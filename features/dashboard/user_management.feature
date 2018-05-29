Feature: staff can manage users

	Scenario: staff can change the state of the user
    Given I am on bootcamp landing page
    When click on 'join' button
    Then sign in to github as 'public-email'
    And authorized through github
    Given I have staff role
    Then I access dashboard
    Given system has active developer
    Then I can see developer in table

	Scenario: staff can change roles of the user	
