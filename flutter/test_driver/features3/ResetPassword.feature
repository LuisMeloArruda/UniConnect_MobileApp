Feature: Reset password 
    As a user,
    I want to be able to reset my password whenever I forget it on the login page

Background: 
    Given I have launched the app

Scenario: Reseting account's password
    Given I am on the login page
    When I navigate to the login section
    And I reset my password
    Then my account's password should be reseted successfully
    Then I should be logged in to my account
    And I should have access to the app's features