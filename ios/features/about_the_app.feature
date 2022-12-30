
Feature: About the App Screen

  Scenario: Test iOS about the app screen
    Given App is launched
    When about the app button is tapped
    Then about the app page title is visible
    And app rating button is visible
    And imprint button is tappable
    And data protection button is tappable
    And App information button is tappable
