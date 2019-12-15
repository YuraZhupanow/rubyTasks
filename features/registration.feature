Feature: Register in
  As a user
  I want to register in
  In order to create a tickets

  Scenario: Register as new user
    Given Registration page is opened and filled in with info about "user"

    When I click on Submit button
    Then I become registered in user