
#!/usr/bin/env ruby

require "test/unit/assertions"
include Test::Unit::Assertions

class SendView
  @@dhl_online_franking_title = '//*[@id="content"]/form/section/div[1]/div/h1/span'

  def initialize(dr)
    $driver = dr
  end

  def send_button_is_tapped
    $home_view.tap_GPS_location_access
    $home_view.tap_current_location_alert
    element = $home_view.get_send_button
    element.click
  end

  def check_dhl_online_franking
    $environment.set_web_view_context
    $environment.wait_for_element_with_xpath_to_appear(@@dhl_online_franking_title)
    element = $driver.find_element(xpath: @@dhl_online_franking_title)
    element.displayed?
  end

  def get_dhl_online_franking_title
    $driver.find_element(xpath: @@dhl_online_franking_title)
  end


end

$send_view = SendView.new($driver)
