Feature: Edit Profile 
Scenario: Editing profile information
    Given I am a university student
    When I navigate to the profile editing section
    And I update my photo, username, name, email and tags
    Then my profile information should be updated successfully
    And I should see the updated information reflected on my profile page