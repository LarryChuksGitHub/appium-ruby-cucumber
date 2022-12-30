
Feature: Contact and FAQ Screen

  Scenario: Test iOS contact and FAQ screen
    Given App is launched
    When contact and FAQ button is tapped
    Then contact page title is visible
    And DHL Service Chat button is tappable
    And Telephone label is visible
    And DHL packet on facebook is tappable
    And DHL packet on twitter is tappable
    And FAQ label is visible
    And Wann kommt mein Paket? is tappable
    And Was bedeutet voraussichtliche Zustellung? is tappable
    And Wo kann ich die Zustelbenachrichtigung einsehen? is tappable
