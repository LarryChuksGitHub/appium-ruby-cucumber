
Feature: Send screen

  Scenario: Test iOS send screen
    Given App is launched
    When send button is tapped
    Then DHL online franking is displayed
