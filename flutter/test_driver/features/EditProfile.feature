Feature: Edit Profile 

Background: 
    Given I am on the "EditProfile"

Scenario: Editing profile information
    When I enter "cr7@gmail.com" in the "email_edit" input field
    When I enter "messi07" in the "RealName_edit" input field
    When I enter "babe" in the "username_edit" input field
    And I tap the "Save"
    Then I am on the "MyProfile"

    