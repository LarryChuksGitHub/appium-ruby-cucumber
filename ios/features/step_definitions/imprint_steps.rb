#!/usr/bin/env ruby

When("imprint button is tapped") do
  $imprint_view.imprint_button_is_tapped
end

Then("imprint page title is visible") do
$imprint_view.imprint_page_title_is_visible
end

Given("DHL Paket GmbH is visible") do
  $imprint_view.dhl_paket_GmbH_label_is_visible
end

Given("Geschäftsführung is visible") do
  $imprint_view.geschäftsführung_label_is_visible
end

Given("Vorsitzender is visible") do
  $imprint_view.vorsitzender_label_is_visible
end

Given("Aufsichsbehörde is visible") do
  $imprint_view.aufsichsbehörde_label_is_visible
end

Given("Pressekontakt is visible") do
  $imprint_view.pressekontakt_label_is_visible
end
