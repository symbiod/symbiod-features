Feature: developer sign up
	Checks if the oauth process works correctly
	Also involves completing of screening

	Scenario: signs in through github and passes screening
		Given I am on bootcamp landing page
		When click on 'join' button
		Then page has 'Sign in to GitHub' text
		When sign in to github
		And authorized through github
		Then page has 'Prove your skills' text
		When I submit screening form with 'http://cspub.net'
		Then page has 'Congratulations' text
		Then deauthorize github app

	Scenario: user signs up with unpublished email
		Given I am on bootcamp landing page
		#When click on 'join' button
		#Then page has 'Sign in to GitHub' text

