Feature: Login to the App
    As a user,
    I want to be able to log in
    so that I can access the app

Background: 
    Given I have launched the app

Scenario: Logging in with username and password (successful user log in)
    Given I am a university student
    When I log in with my username "example_username" and password "example_password"
    Then I should be logged in to my account
    And I should have access to the app's features

Scenario: Logging in with username and password (successful user log in)