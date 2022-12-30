

class TrackingView
  @@page_title = 'Sendung verfolgen'
  @@search_field = "Die Sendungsnummer muss mindestens 8 Zeichen lang sein"
  @@search_button = "Suchen"

  def initialize(dr)
    $driver = dr
  end

def track_button_is_tapped
  $home_view.tap_GPS_location_access
  $home_view.tap_current_location_alert
  element = $home_view.get_track_button
  element.click
end

  def check_tracking_page_title
    element = $environment.wait_for_element_with_id_to_appear(@@page_title)
    element.visible?
  end

  def tracking_search_button_is_tappable
    $driver.find_element(id: @@search_button).enabled?
  end

  def tracking_search_field_is_editable
   element = $driver.find_element(id: @@search_field)
   element_attribute = element.attribute("type")
   puts "element attribute type is: #{element_attribute}"
   element_attribute == 'XCUIElementTypeTextField'
  end

end

$tracking_view = TrackingView.new($driver)
