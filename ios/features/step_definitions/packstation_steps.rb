#!/usr/bin/env ruby

When("Packstation button is tapped") do
  $packstation_view.packstation_button_is_tapped

end

Then("Packstation message is displayed") do
  $packstation_view.packstation_page_message_is_visible
end

Given("Enabled QR Code is displayed") do
  $packstation_view.packstaton_enable_qr_code_is_visible

end

Given("Displayed QR Code is visible") do
$packstation_view.packstaton_disable_qr_code_is_visible
end

Then("Share button is tappable") do
  $packstation_view.packstaton_share_button_is_tappable

end
