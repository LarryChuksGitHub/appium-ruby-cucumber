#!/usr/bin/env ruby
require 'rubygems'

class LocationView

  @@search_filter = '//*[@id="psfReactWidgetLayout"]/div/div[1]/div[1]/div[3]/div/div/a/div/div[1]/p/span'
  @@search_button = '//*[@id="psfReactWidgetLayout"]/div/div[1]/div[1]/div[1]/div/button/div'
  @@search_field = '//*[@id="address-finder-inputfield"]'
  @@no_location_dispay_label = '//*[@id="psfReactWidgetLayout"]/div/div[1]/div[1]/div[1]/div/div[2]/span'
  @@location_plus_icon = '//*[@id="psfReactWidgetLayout"]/div/div[1]/div[1]/div[3]/div/div/a/div/div[2]/span'

  def initialize(dr)
   $driver = dr
  end

  def location_button_is_tapped
    $home_view.tap_GPS_location_access
    $home_view.tap_current_location_alert
    element = $home_view.get_location_button
    element.click
  end

  def location_search_button_is_tappable
      $environment.set_web_view_context
      $environment.wait_for_element_with_xpath_to_appear(@@search_button)
      element = $driver.find_element(xpath: @@search_button)
      element.enabled?
      element_text = element.text
      puts "This is search button text: #{element_text}"
  end

  def location_search_field_is_editable
    element = $driver.find_element(xpath: @@search_field)
    element_attribute = element.attribute("wdType")
    puts "Element attribute type should be XCUIElementTypeTextField and actual is: #{element_attribute}"
    element_attribute == "XCUIElementTypeTextField"
    element.click
    element.send_keys("Ehrenbergstr 11-14, 10245 Berlin")
    element = $driver.find_element(xpath: @@search_button)
    element.click
  end

  def no_location_is_dispayed
    element = $driver.find_element(xpath: @@no_location_dispay_label).displayed?
  end

  def check_search_filter_label
    element = $driver.find_element(xpath: @@search_filter)
    element.displayed?
  end

  def location_plus_icon_is_tappable
    element = $driver.find_element(xpath: @@location_plus_icon)
    element.enabled?
  end

end

$location_view = LocationView.new($driver)
