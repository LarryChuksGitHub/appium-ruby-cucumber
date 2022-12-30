#!/usr/bin/env ruby

class DataProtectionView

  @@data_protection_page_title = 'Datenschutz'
  @@data_protection_information_for_DHL_Paket_App_label = 'Datenschutzinformationen für die DHL Paket App'
  @@einleitung_label = 'Einleitung'
  @@personenbezogene_daten_label = 'Personenbezogene Daten'
  @@name_und_kontaktdaten_des_verantwortlichen_label = 'Name und Kontaktdaten des Verantwortlichen und der Datenschutzbeauftragten'
  @@nutzung_der_DHL_paket_App_label = 'Nutzung der DHL Paket App'
  @@datensicherheit_label = 'Datensicherheit'
  @@stand_der_datenschutzinformationen_label = 'Stand der Datenschutzinformationen'

 def initialize(dr)
   $driver = dr
 end

 def data_protection_button_is_tapped
   $home_view.tap_GPS_location_access
   $home_view.tap_current_location_alert
   $home_view.get_more_button.click
   $more_view.get_about_the_app_button.click
   $about_the_app.get_data_protection_button.click
 end

 def data_protection_page_title_is_visible
   element = $environment.wait_for_element_with_name_to_appear(@@data_protection_page_title)
   element.visible?
 end

 def data_protection_information_for_DHL_Paket_App_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@data_protection_information_for_DHL_Paket_App_label)
   element.visible?
 end

 def einleitung_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@einleitung_label)
   element.visible?
 end

 def personenbezogene_daten_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@personenbezogene_daten_label)
   element.visible?
 end

 def name_und_kontaktdaten_des_verantwortlichen_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@name_und_kontaktdaten_des_verantwortlichen_label)
   element.visible?
 end

 def nutzung_der_DHL_paket_App_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@nutzung_der_DHL_paket_App_label)
   element.visible?
 end

 def datensicherheit_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@datensicherheit_label)
   element.visible?
 end

 def stand_der_datenschutzinformationen_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@stand_der_datenschutzinformationen_label)
   element.visible?
 end

end

$data_protection_view = DataProtectionView.new($driver)
