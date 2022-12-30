
Feature: Setting screen

  Scenario: Test iOS setting screen
    Given App is launched
    When setting button is tapped
    Then push notification label is visible
    And push notification button is switchable
    And bluetooth settings is tappable
    And location Button is tappable
