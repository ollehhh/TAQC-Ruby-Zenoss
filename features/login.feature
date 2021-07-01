Feature: User can log in
  We can login as test user

  Background:
    Given that the user is logged in

    Scenario: Check that user is logged in
    Then I should see that user is logged in