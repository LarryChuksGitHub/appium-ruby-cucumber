#!/usr/bin/env ruby

When("about the app button is tapped") do
  $about_the_app.about_the_app_button_is_tapped
end

Then("about the app page title is visible") do
$about_the_app.about_the_app_page_title_is_visible
end

And("app rating button is visible") do
  $about_the_app.app_rating_button_is_tappable
end

Given("imprint button is tappable") do
  $about_the_app.imprint_button_is_tappable
end

Given("data protection button is tappable") do
  $about_the_app.data_protection_button_is_tappable
end

Given("App information button is tappable") do
  $about_the_app.app_rating_button_is_tappable
end
