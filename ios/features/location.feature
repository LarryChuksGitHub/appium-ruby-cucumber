

Feature: Location Screen

  Scenario: Test iOS location screen
    Given App is launched
    When location button is tapped
    Then location search button is tappable
    And location search field is editable
    And no location message is displayed
    And search filter is displayed
    And plus button is displayed
