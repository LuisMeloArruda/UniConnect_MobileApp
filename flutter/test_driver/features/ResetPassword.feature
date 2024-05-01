Feature: Reset password 
    As a user,
    I want to be able to reset my password whenever I forget it on the login page

Background: 
    Given I am on the "Login"

Scenario: Reseting account's password
    And I tap the "Forgot Password?"
    Then I am on the "RecoverPassword"
    Then my account's password should be reseted successfully