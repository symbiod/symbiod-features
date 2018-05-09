Feature: landings landing

  Scenario: check that root landing works
    Given I am on root landing
    Then it has text 'The great oppurtunities'
    And it has 'bootcamp' button

  Scenario: check that bootcamp landing works
    Given I am on bootcamp landing
    Then it has text 'Upgrade your developer skills'
    And it has 'join' button
