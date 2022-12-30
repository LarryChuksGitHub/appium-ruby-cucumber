
#!/usr/bin/env ruby
require 'rubygems'

class PackstationView
  @@packstation_page_message = "Hier wäre Verfügen :)"
  @@packstaton_share_button = "Share"
  @@packstaton_enable_qr_code = "Enable QR Code Mode"
  @@packstaton_disable_qr_code = "Disable QR Code Mode"


  def initialize(dr)
    $driver = dr
  end

  def packstation_button_is_tapped
    $home_view.tap_GPS_location_access
    $home_view.tap_current_location_alert
    element = $home_view.get_packstation_button
    element.click
  end

  def packstation_page_message_is_visible
    $environment.wait_for_element_with_id_to_appear(@@packstation_page_message)
    element = $driver.find_element(id: @@packstation_page_message)
    element.displayed?
  end

  def packstaton_share_button_is_tappable
      element = $driver.find_element(id: @@packstaton_enable_qr_code).enabled?
  end

  def packstaton_enable_qr_code_is_visible
      element = $driver.find_element(id: @@packstaton_enable_qr_code).displayed?
  end

  def packstaton_disable_qr_code_is_visible
      element = $driver.find_element(id: @@packstaton_disable_qr_code).displayed?
  end

end

$packstation_view = PackstationView.new($driver)
