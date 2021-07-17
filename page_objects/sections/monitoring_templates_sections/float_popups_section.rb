# frozen_string_literal: true

# This section describes the same items in different popups
class FloatPopupsSection < SitePrism::Section
  element :close_dialog_button, '.x-tool-close'
  element :submit_button, :xpath, "//span[text()='Submit']"
  element :save_button, :xpath, "(//span[text()='Save'])[5]"
  element :cancel_button, :xpath, "(//span[text()='Cancel'])[5]"
  element :ok_button, :xpath, "//span[text()='OK']"
  element :name_field, "input[name='newId']"
  element :description_field, "textarea[name='description']"
  elements :checkboxes, "tr[id*='checkboxfield']"
  elements :dropdown_items, '.x-boundlist-floating ul li'

  element :input_name_field, '.x-window-body input'
  element :select_a_graph_dropdown, 'input[placeholder="Select a graph..."]'
end
