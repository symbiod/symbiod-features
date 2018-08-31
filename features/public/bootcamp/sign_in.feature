Feature: member sign up
  Checks if the oauth process works correctly
  Also involves completing of screening

  @github-interaction
  Scenario: signs in through github and passes screening
    Given I am on bootcamp landing page
    Given system has skills
    Given system has test tasks
    When click on 'join' button
    When sign in to github as 'public-email'
    And authorized through github
    Then page has 'Fill your member profile' text
    Then I submit filled profile
    When I accept the policy
    Then page has 'Prove your skills' text
    When I submit screening form with 'http://cspub.net'
    Then page has 'Congratulations' text
    Then deauthorize github app

  Scenario: user signs up with unpublished email
    Given I am on bootcamp landing page
    When click on 'join' button
    When sign in to github as 'non-public-email'
    And authorized through github
    Then page has 'Receive a new expertise' text
    Then page has 'Please fill your github profile according to our guidelines' text
    Then deauthorize github app

