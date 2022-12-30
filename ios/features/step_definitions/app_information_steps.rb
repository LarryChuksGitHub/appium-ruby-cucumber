#!/usr/bin/env ruby

When("app information button is tapped") do
  $app_information_view.app_information_button_is_tapped
end

Then("app information page title is visible") do
$app_information_view.app_information_page_title_is_visible
end

Given("Aktuelle Version is visible") do
  $app_information_view.aktuelle_version_label_is_visible
end

Given("DHL Kundenkonto is visible") do
  $app_information_view.dhl_kundenkonto_label_is_visible
end

Given("Crashlytics is visible") do
  $app_information_view.crashlytics_label_is_visible
end

Given("Fabric is visible") do
  $app_information_view.fabric_label_is_visible
end

Given("Commoncrypto is visible") do
  $app_information_view.commoncrypto_label_is_visible
end

Given("KeychainAcess is visible") do
  $app_information_view.keychain_acess_label_is_visible
end

And("PopupBridge is visible") do
  $app_information_view.popupBridge_label_is_visible
end
