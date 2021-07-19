# frozen_string_literal: true

# This module contains 'click on component' helper method
module ClickOnComponentHelper
  def click_on_component(component)
    @overview_device_page = OverviewDevicePage.new
    @overview_device_page.left_bar_section.find(:xpath, ".//td[contains(.,'#{component}')]").click
  end

  def click_on_graphs
    find('#deviceDetailNav-body tr td', text: 'Graphs', exact_text: true).click
  end
  def click_on_component_graphs
    find('#deviceDetailNav-body tr td', text: 'Component Graphs', exact_text: true).click
  end
end

World(ClickOnComponentHelper)
