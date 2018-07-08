Feature: skills management

  Scenario: deactivate skill
    Given system has an 'active' 'staff' user
    When I sign in as 'staff'
    When I open dashboard page
    Given system has created 'active' skill
    When I open skills page in dashboard
    Then skill 'Create Title' has 'active' status
    When I click 'deactivate Skill' link on skills page
    Then I confirm alert
    Then skill 'Create Title' has 'disabled' status

  Scenario: activate skill
    Given system has an 'active' 'staff' user
    When I sign in as 'staff'
    When I open dashboard page
    Given system has created 'disabled' skill
    When I open skills page in dashboard
    Then skill 'Create Title' has 'disabled' status
    When I click 'activate Skill' link on skills page
    Then I confirm alert
    Then skill 'Create Title' has 'active' status

  Scenario: update skill
    Given system has an 'active' 'staff' user
    When I sign in as 'staff'
    When I open dashboard page
    Given system has created 'active' skill
    When I open skills page in dashboard
    Then skill 'Create Title' has 'active' status
    When I open 'Create Title' skill profile
    Then I can see 'Update Skill' button on skill page
    When I update title with 'New title' on skill page
    And I click 'Update Skill' button on skill page
    Then skill 'New title' has 'active' status

  Scenario: create skill
    Given system has an 'active' 'staff' user
    When I sign in as 'staff'
    When I open dashboard page
    Given system has created 'active' skill
    When I open skills page in dashboard
    When I click New skill link on skills page
    Then I can see 'Create Skill' button on skill page
    When I update title with 'New title' on skill page
    And I click 'Create Skill' button on skill page
    Then skill 'New title' has 'active' status
