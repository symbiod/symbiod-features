Feature: profile

  Scenario: update profile staff user
    Given system has an 'active' 'staff' user
    When I sign in as 'staff'
    When I open dashboard page
    When I open profile in dashboard
    Then I can see my email on page profile 'staff' user
    When I click 'Edit' link on profile
    Then I can see 'Update' button on edit profile
    When I update 'location' input with 'New location'
    When I update 'timezone' input with 'American Samoa'
    And I click 'Update' button on edit profile
    Then I can see 'New location' on profile page

  Scenario: update profile developer user
    Given system has an 'active' 'developer' user
    When I sign in as 'developer'
    When I open dashboard page
    Then I can not access all pages at dashboard
    When I open profile in dashboard
    Then I can see my email on page profile 'developer' user
    When I click 'Edit' link on profile
    Then I can see 'Update' button on edit profile
    When I update 'location' input with 'New location'
    When I update 'timezone' input with 'American Samoa'
    And I click 'Update' button on edit profile
    Then I can see 'New location' on profile page

