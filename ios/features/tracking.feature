
Feature: Tracking Screen

  Scenario: Test iOS Tracking screen
    Given App is launched
    When track button is tapped
    Then parcel tracking label is displayed
    And search button is tappable
    And search field editable
