Feature: test tasks management

  Scenario: deactivate test task
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has created 'active' test task
    When I open test tasks page in dashboard
    Then test task 'Create Title' has 'active' status
    When I click 'deactivate Test task' link on Test tasks page
    Then I confirm alert
    Then test task 'Create Title' has 'disabled' status

  Scenario: activate test task
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has created 'disabled' test task
    When I open test tasks page in dashboard
    Then test task 'Create Title' has 'disabled' status
    When I click 'activate Test task' link on Test tasks page
    Then I confirm alert
    Then test task 'Create Title' has 'active' status

  Scenario: update test task
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has created 'active' test task
    When I open test tasks page in dashboard
    Then test task 'Create Title' has 'active' status
    When I open 'Create Title' test task profile
    Then I can see 'Update Test task' button on Test task page
    When I update title with 'New title'
    And I click 'Update Test task' button on Test task page
    Then test task 'New title' has 'active' status

  Scenario: create test task
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    When I open test tasks page in dashboard
    When I click New Test task link on Test tasks page
    Then I can see 'Create Test task' button on Test task page
    When I update title with 'New title'
    When I update description
    And I click 'Create Test task' button on Test task page
    Then I can see new test task
