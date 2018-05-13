Feature: staff can review developer applications

  Scenario: approves applicant
    Given I am on bootcamp landing page
    When click on 'join' button
    Then sign in to github as 'public-email'
    And authorized through github
    Given I have staff role
    Then I access dashboard
    Given system has applied developer
    Then I can see developer in table
    When I open developer profile
    Then I can see 'activate' button
    When I click 'activate' button
    Then I see no applied user
    And user has 'active' state
    Then deauthorize github app

  Scenario: rejects applicant
    Given I am on bootcamp landing page
    When click on 'join' button
    Then sign in to github as 'public-email'
    And authorized through github
    Given I have staff role
    Then I access dashboard
    Given system has applied developer
    Then I can see developer in table
    When I open developer profile
    Then I can see 'reject' button
    When I click 'reject' button
    Then I confirm alert
    Then I see no applied user
    And user has 'rejected' state
    Then deauthorize github app

