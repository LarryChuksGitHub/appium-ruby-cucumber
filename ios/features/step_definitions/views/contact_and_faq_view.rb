
#!/usr/bin/env ruby
require 'rubygems'

class ContactAndFaqView
  @@contact_page_title = "Kontakt"
  @@dhl_service_chat_button = "DHL Service Chat"
  @@telephone_label = "Telefon: 0228 - 4333112"
  @@dhl_packet_on_facebook_button = "DHL Paket auf facebook"
  @@dhl_packet_on_twitter_button = "DHL Paket auf twitter"
  @@faq_label = "FAQ"
  @@wann_kommt_mein_paket_button = "Wann kommt mein Paket?"
  @@was_bedeutet_voraussichtliche_zustellung_button = "Was bedeutet „voraussichtliche Zustellung“?"
  @@wo_kann_ich_die_zustelbenachrichtigung_einsehen_button = "Wo kann ich die Zustellbenachrichtigung einsehen?"


 def initialize(dr)
   $driver = dr
 end

 def contact_and_faq_button_is_tapped
   $home_view.tap_GPS_location_access
   $home_view.tap_current_location_alert
   $home_view.get_more_button.click
   $more_view.get_contact_and_faq_button.click
 end

 def contact_page_title_is_visible
     $driver.find_element(name: @@contact_page_title).visible?
 end

 def dhl_service_chat_button_is_tappable
   $driver.find_element(id: @@dhl_service_chat_button).enabled?
 end

 def telephone_label_is_visible
    $driver.find_element(id: @@telephone_label).visible?
 end

 def dhl_packet_on_facebook_is_tappable
     $driver.find_element(id: @@dhl_packet_on_facebook_button).enabled?
 end

 def dhl_packet_on_twitter_is_tappable
    $driver.find_element(id: @@wann_kommt_mein_paket_button).enabled?
 end

 def faq_label_is_visible
     $driver.find_element(name: @@faq_label).visible?
 end

 def wann_kommt_mein_paket_button_is_tappable
     $driver.find_element(id: @@dhl_packet_on_twitter_button).enabled?
 end

 def was_bedeutet_voraussichtliche_zustellung_button_is_tappable
   $driver.find_element(id: @@was_bedeutet_voraussichtliche_zustellung_button).enabled?
 end

 def wo_kann_ich_die_zustelbenachrichtigung_einsehen_button_is_tappable
   $driver.find_element(id: @@wo_kann_ich_die_zustelbenachrichtigung_einsehen_button).enabled?
 end

 def get dhl_service_chat_button
   $driver.find_element(id: @@dhl_service_chat_button)

 end

 def get dhl_packet_on_facebook_button
   $driver.find_element(id: @@dhl_packet_on_facebook_button)

 end

 def get dhl_packet_on_twitter_button
   $driver.find_element(id: @@dhl_packet_on_twitter_button)

 end

end


$contact_and_faq_view = ContactAndFaqView.new($driver)
