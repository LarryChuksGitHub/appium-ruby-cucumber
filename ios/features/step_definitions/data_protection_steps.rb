#!/usr/bin/env ruby


When("Data protection button is tapped") do
$data_protection_view.data_protection_button_is_tapped
end

Then("Data protection page title is visible") do
$data_protection_view.data_protection_page_title_is_visible
end

Given("Data protection information for DHL Paket App is visible") do
$data_protection_view.data_protection_information_for_DHL_Paket_App_label_is_visible
end

Given("Einleitung is visible") do
  $data_protection_view.einleitung_label_is_visible
end

Given("Personenbezogene Daten is visible") do
  $data_protection_view.personenbezogene_daten_label_is_visible
end

Given("Name und Kontaktdaten des Verantwortlichen is visible") do
$data_protection_view.name_und_kontaktdaten_des_verantwortlichen_label_is_visible
end

Given("Nutzung der DHL Paket App is visible") do
  $data_protection_view.nutzung_der_DHL_paket_App_label_is_visible
end

Given("Datensicherheit is visible") do
  $data_protection_view.datensicherheit_label_is_visible
end

Given("Stand der Datenschutzinformationen is visible") do
  $data_protection_view.stand_der_datenschutzinformationen_label_is_visible
end
