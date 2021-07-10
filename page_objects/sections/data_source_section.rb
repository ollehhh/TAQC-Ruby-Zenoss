# frozen_string_literal: true

class DataSourcesSection < SitePrism::Section
  element :add_data_src_button, '#dataSourceTreeGrid .x-btn:nth-of-type(1) button'
  element :remove_data_src_button, '#dataSourceTreeGrid .x-btn:nth-of-type(2) button'
  element :edit_options_dropdown, '#dataSourceTreeGrid .x-btn-arrow button'
  element :add_data_point_to_graph_item, :xpath, "//span[text()='Add Data Point To Graph']"
  element :add_data_point_item, :xpath, "//span[text()='Add Data Point']"
  element :view_edit_details_item, :xpath, "//span[text()='View and Edit Details']"
  elements :data_src_table, '#dataSourceTreeGrid-body div table tbody tr'
end
