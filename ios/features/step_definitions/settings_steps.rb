#!/usr/bin/env ruby

Given("setting button is tapped") do
  $settings_view.settings_button_is_tapped
end

Given("push notification label is visible") do
  $settings_view.push_notification_label_is_visible
end

Given("push notification button is switchable") do
  $settings_view.push_notification_button_is_switchable
end

Given("bluetooth settings is tappable") do
  $settings_view.bluetooth_settings_button_is_tappable
end

Then("location Button is tappable") do
  $settings_view.location_settings_button_is_tappable
end
