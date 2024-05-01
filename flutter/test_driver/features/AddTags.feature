Feature: Create Tag for Other Criteria on User Profile

Background: 
    Given I am on the "MainTags"

Scenario: 
    When I enter "fã do ronaldo" in the "Other_tag_Add" input field
    And I tap the "AddOtherTag"
    And I tap the "Save Changes"
    Then I am on the "EditProfile"


