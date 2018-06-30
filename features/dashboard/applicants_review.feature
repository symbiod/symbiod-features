Feature: staff can review developer applications

  Scenario: approves applicant
    Given system has applied developer
    Given system has 'staff' user
    When I sign in
    When I open dashboard page
    Then I can access to all dashboard
    Then I can see developer in table
    When I open developer profile
    Then I can see 'activate' button
    When I click 'activate' button
    Then I see no applied user
    And user has 'active' state

  Scenario: rejects applicant
    Given system has applied developer
    Given system has 'staff' user
    When I sign in
    When I open dashboard page
    Then I can access to all dashboard
    Then I can see developer in table
    When I open developer profile
    Then I can see 'reject' button
    When I click 'reject' button
    Then I confirm alert
    Then I see no applied user
    And user has 'rejected' state

