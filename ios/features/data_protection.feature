
Feature: Data Protection Screen

  Scenario: Test iOS data protection screen
    Given App is launched
    When Data protection button is tapped
    Then Data protection page title is visible
    And Data protection information for DHL Paket App is visible
    And Einleitung is visible
    And Personenbezogene Daten is visible
    And Name und Kontaktdaten des Verantwortlichen is visible
    And Nutzung der DHL Paket App is visible
    And Datensicherheit is visible
    And Stand der Datenschutzinformationen is visible
