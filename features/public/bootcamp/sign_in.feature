Feature: developer sign in

	Scenario: signs in through github and passes screening
		Given I am on bootcamp landing page
		When click on 'join' button
		Then page has 'Sign in to GitHub' text
		When sign in to github
		And authorized through github
		Then page has 'Prove your skills' text

		Then deauthorize github app
