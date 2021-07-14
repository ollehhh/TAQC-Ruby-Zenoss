# frozen_string_literal: true

# This section describes 'dependency' subcomponent
class SubcomponentDependencySection < SitePrism::Section
  section :display_drop_down, DisplayDropDownSection, '.componenttbar'
  element :add_button, "div[id*='dependencygrid'] .x-btn:nth-of-type(1) button"
  element :remove_button, "div[id*='dependencygrid'] .x-btn:nth-of-type(2) button"
  element :export_button, "div[id*='dependencygrid'] .x-btn:nth-of-type(3) button"
  element :dependents_button, "div[id*='dependencygrid'] .x-btn:nth-of-type(4) button"
  element :dependencies_button, "div[id*='dependencygrid'] .x-btn:nth-of-type(5) button"
  element :open_close_graphs_button, "div[id^='dependencygraphs'] .x-tool-collapse-right"

  element :groups_dropdown, "div[id*='dependencygrid'] .x-btn:nth-of-type(8) button"
  element :util_filter_slider, :xpath, "//div[@class='x-slider-thumb']"
  elements :dependency_table, "div[id*='dependencygrid'][id$='body'] .x-grid-group-title"
end
