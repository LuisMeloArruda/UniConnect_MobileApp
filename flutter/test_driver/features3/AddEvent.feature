Feature: Add New Upcoming Event
Scenario: Adding a new upcoming event
    Given I am a university student
    When I navigate to the section for adding a new upcoming event
    And I provide details such as the event's title, date, time, location, and tags
    Then the new upcoming event should be added successfully
    And other students should be able to view and participate in it