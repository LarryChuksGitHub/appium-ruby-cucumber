

Feature: Packstation Screen

  Scenario: Test iOS packstation screen
    Given App is launched
    When Packstation button is tapped
    Then Packstation message is displayed
    And Enabled QR Code is displayed
    And Displayed QR Code is visible
    And Share button is tappable
