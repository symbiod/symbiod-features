Feature: profile

  Scenario: update profile staff user
    Given system has 'staff' user
    When I sign in
    When I open dashboard page
    Then I can access to all dashboard
    When I open profile in dashboard
    Then I can see email on page profile
    When I click 'Edit' link on profile
    Then I can see 'Update' button on edit profile
    When I update 'location' input with 'New location'
    When I update 'timezone' input with 'American Samoa'
    And I click 'Update' button on edit profile
    Then I can see 'New location' on profile page

  Scenario: update profile developer user
    Given system has 'developer' user
    When I sign in
    When I open dashboard page
    Then I can not access to all dashboard
    When I open profile in dashboard
    Then I can see email on page profile
    When I click 'Edit' link on profile
    Then I can see 'Update' button on edit profile
    When I update 'location' input with 'New location'
    When I update 'timezone' input with 'American Samoa'
    And I click 'Update' button on edit profile
    Then I can see 'New location' on profile page

