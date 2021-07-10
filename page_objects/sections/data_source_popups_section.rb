# frozen_string_literal: true

class DataSourcePopupsSection < SitePrism::Section
  element :close_dialog_button, '.x-tool-close'
  element :submit_button, :xpath, "//span[text()='Submit']"
  element :save_button, :xpath, "(//span[text()='Save'])[6]"
  element :cancel_button, :xpath, "(//span[text()='Cancel'])[6]"
  element :ok_button, :xpath, "//span[text()='OK']"

  element :input_name_field, '.x-window-body input'
  element :select_a_graph_dropdown, 'input[placeholder="Select a graph..."]'
  elements :select_a_graph_dropdown_items, '.x-boundlist ul li'
end
