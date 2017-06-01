Feature: Submissions

  Scenario: An anonymous user can submit a video
    Given I am on the home page
    When I fill in the following:
      | submission_title       | a video                          |
      | submission_link        | http://test.com                  |
      | submission_description | A video about water or something |
      | submission_name        | Dan                              |
      | submission_team_name   | Dan's Awesome Team               |
      | submission_email       | dan@example.com                  |
      | submission_genre       | Horror                           |
      | submission_runtime     | 12:32                            |
    And I select "Professional" from "submission_group"
    And I check "submission_accept_terms"
    And I press "Submit Film"
    Then I should see "Thank you for your submission."

  Scenario: An authenticated User can Review the submissions
    Given the following user:
      | email                 | dan@examplecom |
      | password              | pass           |
      | password_confirmation | pass           |
    And that user is logged in
    And the following submissions:
      | title      | link         | password | description | name | team_name  | email           | genre  | runtime | group        |
      | sunshine   | https://test | pass     | a video     | Dan  | Crocodiles | dan@example.com | Horror | 5:32    | Professional |
      | springtime | https://test | pass     | a video     | Bob  | Aligators  | bob@example.com | Comedy | 12:66   | Professional |
    And I am on the home page
    When I follow "Review Submissions"
    Then I should see "sunshine"
    And I should see "springtime"
