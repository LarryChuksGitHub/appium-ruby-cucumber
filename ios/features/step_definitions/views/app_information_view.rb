
#!/usr/bin/env ruby

class AppInformationView

  @@app_information_page_title = 'App Informationen'
  @@aktuelle_version_label = 'Aktuelle Version'
  @@dhl_kundenkonto_label = 'DHL Kundenkonto'
  @@crashlytics_label = 'Crashlytics'
  @@fabric_label = 'Fabric'
  @@commoncrypto_label = 'IDZSwiftCommonCrypto'
  @@keychain_acess_label = 'KeychainAccess'
  @@popupBridge_label = 'PopupBridge'


 def initialize(dr)
   $driver = dr
 end

 def app_information_button_is_tapped
   $home_view.tap_GPS_location_access
   $home_view.tap_current_location_alert
   $home_view.get_more_button.click
   $more_view.get_about_the_app_button.click
   $about_the_app.get_app_information_button.click
 end

 def app_information_page_title_is_visible
   element = $environment.wait_for_element_with_name_to_appear(@@app_information_page_title)
   element.visible?
 end

 def aktuelle_version_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@aktuelle_version_label)
   element.visible?
 end

 def dhl_kundenkonto_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@dhl_kundenkonto_label)
   element.visible?
 end

 def crashlytics_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@crashlytics_label)
   element.visible?
 end

 def fabric_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@fabric_label)
   element.visible?
 end

 def commoncrypto_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@commoncrypto_label)
   element.visible?
 end

 def keychain_acess_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@keychain_acess_label)
   element.visible?
 end

 def popupBridge_label_is_visible
   element = $environment.wait_for_element_with_id_to_appear(@@popupBridge_label)
   element.visible?
 end


end

$app_information_view = AppInformationView.new($driver)
