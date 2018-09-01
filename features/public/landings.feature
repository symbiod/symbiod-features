Feature: landings landing

  Scenario: checks navigation to specialists
    From root landing to specialists landing

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

	Scenario: checks navigation to organizations landing
    From root landing to organizations landing

	  Given I am on root landing page
    Then page has 'A symbiosis of specialists and non-profits' text
    And page has 'organization' button

    When click on 'organization' button
    Then page has 'Have an idea of non-profitable project?' text
    And page has 'Offer an idea' button

    When click on 'home' link
    Then page has 'A symbiosis of specialists and non-profits' text

    When click on 'organizations' link
    Then page has 'Have an idea of non-profitable project?' text

