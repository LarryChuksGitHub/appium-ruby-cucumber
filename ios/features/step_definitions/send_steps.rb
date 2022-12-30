#!/usr/bin/env ruby

Given("send button is tapped") do
  $send_view.send_button_is_tapped
end

Given("DHL online franking is displayed") do
  $send_view.check_dhl_online_franking
  element = $send_view.get_dhl_online_franking_title
  element_text = element.text
  puts "This is the text: #{element_text}"
  element_text == "DHL Online Frankierung"
  $environment.set_native_view_context
end
