
Feature: Imprint Screen

  Scenario: Test iOS imprint screen
    Given App is launched
    When imprint button is tapped
    Then imprint page title is visible
    And DHL Paket GmbH is visible
    And Geschäftsführung is visible
    And Vorsitzender is visible
    And Aufsichsbehörde is visible
    And Pressekontakt is visible
