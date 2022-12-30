#!/usr/bin/env ruby

When("More button is tapped") do
  $home_view.tap_GPS_location_access
  $home_view.tap_current_location_alert
  $more_view.tap_more_button
end

Then("More page title is visible") do
  $more_view.check_more_page_title
end

Given("User address is visible") do
  $more_view.check_user_address
end

Given("Setting button is tappable") do
  $more_view.setting_button_is_tapable
end

Given("Contact and FAQ button is tappable") do
  $more_view.contact_and_faq_button_button_is_tapable

end

Given("About the App button is tappable") do
  $more_view.about_the_app_button_is_tapable

end

And("Login button is visible") do
  $more_view.login_button_is_dispayed
end
