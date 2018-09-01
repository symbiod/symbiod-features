Feature: landings landing

  Scenario: checks landings navigation
    From root landing to bootcamp landing

    Given I am on root landing page
    Then page has 'A symbiosis of specialists and non-profits' text
    And page has 'member' button

    When click on 'member' button
    Then page has 'Receive a new expertise' text
    And page has 'join' button

    When click on 'home' link
    Then page has 'A symbiosis of specialists and non-profits' text

    When click on 'bootcamp' link
    Then page has 'Receive a new expertise' text
