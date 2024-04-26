Feature: Add New Student Organization
Scenario: Adding a new student organization
    Given I am a university student
    When I navigate to the section for adding a new student organization
    And I provide details such as the organization's name, description, room, and email
    Then the new student organization should be added successfully
    And other students should be able to discover and join it