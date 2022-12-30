

#!/usr/bin/env ruby
require 'rubygems'

class ImprintView
  @@imprint_page_title = "Impressum"
  @@dhl_paket_GmbH_label = "DHL Paket GmbH"
  @@geschäftsführung_label = "Geschäftsführung:"
  @@vorsitzender_label = "Vorsitzender des Aufsichtsrates:"
  @@aufsichsbehörde_label = "Aufsichtsbehörde:"
  @@pressekontakt_label = "Pressekontakt:"


 def initialize(dr)
   $driver = dr
 end

 def imprint_button_is_tapped
   $home_view.tap_GPS_location_access
   $home_view.tap_current_location_alert
   $home_view.get_more_button.click
   $more_view.get_about_the_app_button.click
   $about_the_app.get_imprint_button.click
 end

 def imprint_page_title_is_visible
   element = $environment.wait_for_element_with_name_to_appear(@@imprint_page_title)
   element.visible?
 end

 def dhl_paket_GmbH_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@dhl_paket_GmbH_label)
   element.visible?
 end

 def geschäftsführung_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@geschäftsführung_label)
   element.visible?
 end

 def vorsitzender_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@vorsitzender_label)
   element.visible?
 end

 def aufsichsbehörde_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@aufsichsbehörde_label)
   element.visible?
 end

 def pressekontakt_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@pressekontakt_label)
   element.visible?
 end

end

$imprint_view = ImprintView.new($driver)
