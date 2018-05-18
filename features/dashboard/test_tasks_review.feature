Feature: stuff can review test_tasks

  Scenario: update test task
    Given I am on bootcamp landing page
    When click on 'join' button
    Then sign in to github as 'public-email'
    And authorized through github
    Given I have staff role
    Then I access dashboard
    Given system has applied test task
    Then I can see test task in table
    When I open test task profile
    Then I can see 'Update Test task' button on Test task page
    When I update title field test task
    And I click 'Update Test task' button on Test task page
    Then I see new test task title
    Then deauthorize github app

