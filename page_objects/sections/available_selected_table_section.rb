# frozen_string_literal: true

# This section describes the same table elements on modeler plugins and monitoring templates page
class AvailableSelectedTableSection < SitePrism::Section
  elements :available_list, :xpath, "(//div[@class='x-boundlist-list-ct'])[1]/ul/li"
  elements :selected_list, :xpath, "(//div[@class='x-boundlist-list-ct'])[2]/ul/li"
  element :move_to_top_button, '.x-form-fieldcontainer .x-form-itemselector-top'
  element :move_to_bottom_button, '.x-form-fieldcontainer .x-form-itemselector-bottom'
  element :move_up_button, '.x-form-fieldcontainer .x-form-itemselector-up'
  element :move_down_button, '.x-form-fieldcontainer .x-form-itemselector-down'
  element :add_to_selected_button, '.x-form-fieldcontainer .x-form-itemselector-add'
  element :remove_from_selected_button, '.x-form-fieldcontainer .x-form-itemselector-remove'
end
