
Feature: Push notification screen

  Scenario: Test iOS push notification screen
    Given App is launched
    When Push notification button is tapped
    Then When my packet arrive label is visible
    And When my packet arrive button is switchable
    And When my packet arrive today label is visible
    And When my packet arrive today button is switchable
    And My packet is there label is visible
    And My packet is there button is switchable
