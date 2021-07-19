# frozen_string_literal: true

# This module contains 'click on component' helper method
module ClickOnComponentHelper
  def click_on_component(component)
    @overview_device_page = OverviewDevicePage.new
    @overview_device_page.left_bar_section.find('td', text: component).click
  end

  def click_on_graphs
    @overview_device_page = OverviewDevicePage.new
    @overview_device_page.left_bar_section.component_tr[4].td_element.click
  end
end
World(ClickOnComponentHelper)

