#!/usr/bin/env ruby

class MoreView
  @@more_page_title = "Mehr"
  @@username_label = "maxmustermann@gmx.de"
  @@settings_button = "Einstellungen"
  @@contact_and_faq_button = "Kontakt & FAQ"
  @@about_the_app_button = "Über diese App"
  @@loggin_button = "Einloggen"

  def initialize(dr)
    $driver = dr
  end

  def tap_more_button
    element = $home_view.get_more_button
    element.click

  end

  def check_more_page_title
    $driver.find_element(name: @@more_page_title).visible?
  end

  def check_user_address
    $driver.find_element(id: @@username_label).visible?
  end

  def setting_button_is_tapable
    $driver.find_element(id: @@settings_button).enabled?
  end

  def contact_and_faq_button_button_is_tapable
    $driver.find_element(id: @@contact_and_faq_button).enabled?
  end

  def about_the_app_button_is_tapable
    $driver.find_element(id: @@about_the_app_button).enabled?
  end

  def login_button_is_dispayed
    $driver.find_element(id: @@loggin_button).visible?
  end

  def get_settings_button
    $driver.find_element(id: @@settings_button)
  end

  def get_contact_and_faq_button
    $driver.find_element(id: @@contact_and_faq_button)
  end

  def get_about_the_app_button
    $driver.find_element(id: @@about_the_app_button)
  end

  def get_login_button
    $driver.find_element(id: @@loggin_button)
  end

end

$more_view = MoreView.new($driver)
