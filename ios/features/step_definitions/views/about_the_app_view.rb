

#!/usr/bin/env ruby
require 'rubygems'

class AboutTheAppView
  @@about_the_app_page_title = "Über diese App"
  @@app_rating_button = "App bewerten"
  @@imprint_button = "Impressum"
  @@data_protection_button = "Datenschutz"
  @@app_information_button = "App Informationen"

 def initialize(dr)
   $driver = dr
 end

 def about_the_app_button_is_tapped
   $home_view.tap_GPS_location_access
   $home_view.tap_current_location_alert
   $home_view.get_more_button.click
   $more_view.get_about_the_app_button.click
 end

 def about_the_app_page_title_is_visible
     $driver.find_element(name: @@about_the_app_page_title).visible?
 end

 def app_rating_button_is_tappable
   $driver.find_element(id: @@app_rating_button).enabled?
 end

 def imprint_button_is_tappable
    $driver.find_element(id: @@imprint_button).visible?
 end

 def data_protection_button_is_tappable
   $driver.find_element(id: @@data_protection_button).enabled?
 end

 def app_information_button_is_tappable
    $driver.find_element(id: @@app_information_button).enabled?
 end

 def get_imprint_button
   $driver.find_element(id: @@imprint_button)
 end

 def get_data_protection_button
   $driver.find_element(id: @@data_protection_button)
 end

 def get_app_information_button
   $driver.find_element(id: @@app_information_button)
 end

end

$about_the_app = AboutTheAppView.new($driver)
