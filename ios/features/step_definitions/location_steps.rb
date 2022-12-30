#!/usr/bin/env ruby

When("location button is tapped") do
  $location_view.location_button_is_tapped

end

Then("location search button is tappable") do
  $location_view.location_search_button_is_tappable

end

Given("location search field is editable") do
  $location_view.location_search_field_is_editable

end

Given("no location message is displayed") do
  $location_view.no_location_is_dispayed
end

Given("search filter is displayed") do
  $location_view.check_search_filter_label

end

And("plus button is displayed") do
  $location_view.location_plus_icon_is_tappable
  $environment.set_native_view_context

end
