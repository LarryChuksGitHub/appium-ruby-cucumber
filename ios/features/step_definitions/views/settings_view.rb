
#!/usr/bin/env ruby

require "test/unit/assertions"
include Test::Unit::Assertions

class SettingsView
  @@push_notification_label = "Push-Mitteilungen"
  @@push_notification_button = '//XCUIElementTypeApplication[@name="DHL Paket GIT"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeSwitch'
  @@bluetooth_settings_button = "Bluetooth-Einstellungen"
  @@location_settings_button = "Standort-Einstellungen"


  def initialize(dr)
    $driver = dr
  end

  def settings_button_is_tapped
    $home_view.tap_GPS_location_access
    $home_view.tap_current_location_alert
    $home_view.get_more_button.click
    element = $more_view.get_settings_button
    element.click
  end

  def push_notification_label_is_visible
    element = $driver.find_element(id: @@push_notification_label).visible?
  end

  def push_notification_button_is_switchable
    element = $driver.find_element(xpath: @@push_notification_button)
    element_attribute = element.attribute("type")
    element_attribute == "XCUIElementTypeSwitch"
  end

  def bluetooth_settings_button_is_tappable
    element = $driver.find_element(id: @@bluetooth_settings_button).enabled?
  end

  def location_settings_button_is_tappable
    element = $driver.find_element(id: @@location_settings_button).enabled?
  end

  def get_push_notification_button
    $driver.find_element(xpath: @@push_notification_button)
  end

end

$settings_view = SettingsView.new($driver)
