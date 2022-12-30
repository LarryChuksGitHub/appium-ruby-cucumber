
#!/usr/bin/env ruby
require 'rubygems'

class HomeView
  @@gps_location_access_alert = "Allow Once"
  @@current_location_alert_button = "OK"
  @@track_button = "Verfolgen"
  @@send_button = 'Versenden'
  @@location_button = 'Standorte'
  @@packstation_button = 'Packstation'
  @@more_button = 'Mehr'


 def initialize(dr)
   $driver = dr
 end

 def tap_GPS_location_access

   $environment.wait_for_element_with_id_to_appear(@@gps_location_access_alert)
   element = $driver.find_element(id: @@gps_location_access_alert)
   element.click
 end

 def tap_current_location_alert
   #$environment.wait_for_element_with_id_to_appear(@@current_location_alert_button)
   element = $driver.find_element(id: @@current_location_alert_button)
   element.click
 end

 def track_button_is_tapable
  $driver.find_element(id: @@track_button).enabled?
 end

 def send_button_is_tapable
   $driver.find_element(id: @@send_button).enabled?
 end

 def location_button_is_tapable
   $driver.find_element(id: @@location_button).enabled?
 end

 def packstation_button_is_tapable
   $driver.find_element(id: @@packstation_button).enabled?
 end

 def more_button_is_tapable
    $driver.find_element(id: @@more_button).enabled?
 end

 def get_track_button
   $driver.find_element(id: @@track_button)
 end

 def get_send_button
   $driver.find_element(id: @@send_button)
 end

 def get_location_button
    $driver.find_element(id: @@location_button)
 end

 def get_packstation_button
   $driver.find_element(id: @@packstation_button)
 end

 def get_more_button
    $driver.find_element(id: @@more_button)
 end

end

$home_view = HomeView.new($driver)
