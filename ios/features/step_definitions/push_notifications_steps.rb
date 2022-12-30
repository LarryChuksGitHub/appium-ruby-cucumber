#!/usr/bin/env ruby

When("Push notification button is tapped") do
  $push_notification_view.push_notification_button_is_tapped
end

Then("When my packet arrive label is visible") do
  $push_notification_view.when_my_packet_arrive_label_is_visible
end

Given("When my packet arrive button is switchable") do
  $push_notification_view.when_my_packet_arrive_button_is_switchable
end

Given("When my packet arrive today label is visible") do
  $push_notification_view.when_my_packet_arrive_today_label_is_visible
end

Given("When my packet arrive today button is switchable") do
  $push_notification_view.when_my_packet_arrive_today_button_is_switchable
end

Given("My packet is there label is visible") do
  $push_notification_view.when_my_packet_is_there_label_is_visible
end

And("My packet is there button is switchable") do
  $push_notification_view.when_my_packet_is_there_button_is_switchable
end
