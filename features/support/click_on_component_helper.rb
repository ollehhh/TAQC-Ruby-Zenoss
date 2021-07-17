# frozen_string_literal: true

# This module contains 'click on component' helper method
module ClickOnComponentHelper
  def click_on_component(component)
    @overview_device_page = OverviewDevicePage.new
    @overview_device_page.left_bar_section.find(:xpath, ".//td[contains(.,'#{component}')]").click
  end
end

World(ClickOnComponentHelper)
