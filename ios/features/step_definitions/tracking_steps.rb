#!/usr/bin/env ruby

Given("track button is tapped") do
  $tracking_view.track_button_is_tapped
end

Given("parcel tracking label is displayed") do
  $tracking_view.check_tracking_page_title
end

Given("search button is tappable") do
  $tracking_view.tracking_search_button_is_tappable
end

Then("search field editable") do
  $tracking_view.tracking_search_field_is_editable
end
