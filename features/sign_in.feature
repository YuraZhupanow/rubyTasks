Feature: Sign in
  As a user
  I want to sign in
  In order to create a tickets

  Scenario: Sign in into account
    Given I am not logged in

    When  I click on sign in button
    Then I see a login form opened

    When I fill in login form with valid credentials
    And Click log in button
    Then I become a logged in user