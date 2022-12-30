
#!/usr/bin/env ruby

require "test/unit/assertions"
include Test::Unit::Assertions

class PushNotificationView
  @@when_my_packet_arrive_label = "Wann mein Paket kommt"
  @@when_my_packet_arrive_button = '//XCUIElementTypeApplication[@name="DHL Paket GIT"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeSwitch'
  @@when_my_packet_arrive_today_label = "Wenn mein Paket heute kommt"
  @@when_my_packet_arrive_today_button = '//XCUIElementTypeApplication[@name="DHL Paket GIT"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeSwitch'
  @@when_my_packet_is_there_label = "Wenn mein Paket da ist"
  @@when_my_packet_is_there_button = '//XCUIElementTypeApplication[@name="DHL Paket GIT"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeSwitch'


  def initialize(dr)
    $driver = dr
  end

  def push_notification_button_is_tapped
    $home_view.tap_GPS_location_access
    $home_view.tap_current_location_alert
    $home_view.get_more_button.click
    $more_view.get_settings_button.click
    $settings_view.get_push_notification_button.click
  end

  def when_my_packet_arrive_label_is_visible
    element = $environment.wait_for_element_with_id_to_appear(@@when_my_packet_arrive_label)
    #$driver.find_element(id: @@when_my_packet_arrive_label).visible?
    element.visible?
  end

  def when_my_packet_arrive_button_is_switchable
    element = $driver.find_element(xpath: @@when_my_packet_arrive_button)
    element_attribute = element.attribute("type")
    #puts "element attribute should be XCUIElementTypeSwitch and actual is: #{element_attribute}"
    element_attribute == "XCUIElementTypeSwitch"
    element.click
  end

  def when_my_packet_arrive_today_label_is_visible
    $driver.find_element(id: @@when_my_packet_arrive_today_label).visible?
  end

  def when_my_packet_arrive_today_button_is_switchable
    element = $driver.find_element(xpath: @@when_my_packet_arrive_today_button)
    element_attribute = element.attribute("type")
    element_attribute == 'XCUIElementTypeSwitch'
    element.click
  end


  def when_my_packet_is_there_label_is_visible
    $driver.find_element(id: @@when_my_packet_is_there_label).visible?
  end

  def thread_sleep
      sleep(2)
  end

  def when_my_packet_is_there_button_is_switchable
    element = $driver.find_element(xpath: @@when_my_packet_is_there_button)
    element_attribute = element.attribute("type")
    element_attribute == "XCUIElementTypeSwitch"
    element.click
  end


end

$push_notification_view = PushNotificationView.new($driver)
