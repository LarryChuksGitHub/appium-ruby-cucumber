

Feature: Home Screen

  Scenario: Test iOS home Screen
    Given App is launched
    And Allow access to GPS location alert is tapped
    And Allow access to current location alert is tapped
    Then Tracking button is tappable
    And Send button is tappable
    And Location button is tappable
    And Packstation button is tappable
    And More button is tappable
