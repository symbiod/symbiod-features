Feature: test tasks management

  Scenario: deactivate test task
    Given system has applied developer
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has applied 'active' test task
    Then I can see test task in table
    Then I can see 'active' state test task on Test tasks page
    When I click 'deactivate Test task' link on Test tasks page
    Then I confirm alert
    Then test task has 'disabled' state

  Scenario: activate test task
    Given system has applied developer
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has applied 'disabled' test task
    Then I can see test task in table
    Then I can see 'disabled' state test task on Test tasks page
    When I click 'activate Test task' link on Test tasks page
    Then I confirm alert
    Then test task has 'active' state

  Scenario: update test task
    Given system has applied developer
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has applied 'active' test task
    Then I can see test task in table
    When I open test task profile
    Then I can see 'Update Test task' button on Test task page
    When I update title field test task
    And I click 'Update Test task' button on Test task page
    Then I can see test task new title

  Scenario: create test task
    Given system has applied developer
    Given system has staff user
    When I sign in as staff
    Then I can access dashboard
    Given system has applied 'active' test task
    Then I can see test task in table
    When I click 'New Test task' link on Test tasks page
    Then I can see 'Create Test task' button on Test task page
    When I update fields test task
    And I click 'Create Test task' button on Test task page
    Then I can see new test task
