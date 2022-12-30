
Feature: App Information Screen

  Scenario: Test iOS app information screen
    Given App is launched
    When app information button is tapped
    Then app information page title is visible
    And Aktuelle Version is visible
    And DHL Kundenkonto is visible
    And Crashlytics is visible
    And Fabric is visible
    And Commoncrypto is visible
    And KeychainAcess is visible
    And PopupBridge is visible
