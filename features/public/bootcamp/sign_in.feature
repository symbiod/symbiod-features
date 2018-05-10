Feature: developer sign in

	Scenario: signs in through github
		Given I am on bootcamp landing page
		When click on 'join' button
		Then page has 'Sign in to GitHub' text
