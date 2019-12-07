Feature: Sign in
  As a user
  I want to sign in
  In order to create a tickets

  Scenario: Sign in into account
    Given I am not logged in

    When  I click on log in button
    Then I see a login form opened