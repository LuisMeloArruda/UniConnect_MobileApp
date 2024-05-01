Feature: Login to the App
    As a user,
    I want to be able to log in
    so that I can access the app

Background: 
    Given I am on the "Login"

Scenario: Logging in with username and password (successful user log in)
    When I enter "cr7@gmail.com" in the "email" input field
    When I enter "ronaldo" in the "password" input field
    And I tap the "Sign in" button
    Then I am on the "HomePage"

Scenario: Logging in with username and password (unsuccessful user log in)
    When I enter "cr7@gmail.com" in the "email" input field
    When I enter "error" in the "password" input field
    And I tap the "Sign in" button
    Then I am on the "Login"