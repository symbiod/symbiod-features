Feature: landings landing

  Scenario: checks landings navigation
    From root landing to bootcamp landing

    Given I am on root landing page
    Then page has '!The great oppurtunities' text
    And page has 'developer' button

    When click on 'developer' button
    Then page has 'Upgrade your developer skills' text
    And page has 'join' button

    When click on 'home' link
    Then page has 'The great oppurtunities' text

    When click on 'bootcamp' link
    Then page has 'Upgrade your developer skills' text
