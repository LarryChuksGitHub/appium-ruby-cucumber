#!/usr/bin/env ruby

When("contact and FAQ button is tapped") do
$contact_and_faq_view.contact_and_faq_button_is_tapped
end

Then("contact page title is visible") do
  $contact_and_faq_view.contact_page_title_is_visible
end

Given("DHL Service Chat button is tappable") do
  $contact_and_faq_view.dhl_service_chat_button_is_tappable
end

Given("Telephone label is visible") do
  $contact_and_faq_view.telephone_label_is_visible
end

Given("DHL packet on facebook is tappable") do
  $contact_and_faq_view.dhl_packet_on_facebook_is_tappable
end

Given("DHL packet on twitter is tappable") do
  $contact_and_faq_view.dhl_packet_on_twitter_is_tappable
end

Given("FAQ label is visible") do
  $contact_and_faq_view.faq_label_is_visible
end

Given("Wann kommt mein Paket? is tappable") do
  $contact_and_faq_view.wann_kommt_mein_paket_button_is_tappable
end

Given("Was bedeutet voraussichtliche Zustellung? is tappable") do
  $contact_and_faq_view.was_bedeutet_voraussichtliche_zustellung_button_is_tappable
end

Given("Wo kann ich die Zustelbenachrichtigung einsehen? is tappable") do
  $contact_and_faq_view.wo_kann_ich_die_zustelbenachrichtigung_einsehen_button_is_tappable
end
