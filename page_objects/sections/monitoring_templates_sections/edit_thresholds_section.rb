# frozen_string_literal: true

require_relative '../at_popups_section'
# This section describes 'Edit Threshold' popup
class EditThresholdSection < SitePrism::Section
  section :float_popups, FloatPopupsSection, '#editThresholdDialog'
  section :available_selected_table, AvailableSelectedTableSection, '#thresholdItemSelector-inputRow'

  element :test_with_rpn_button, 'button#testDeviceButton-btnEl'
  element :spinner_up, '.x-form-spinner-up'
  element :spinner_down, '.x-form-spinner-down'
  element :description_field, "input[name='description']"
  element :explanation_field, "input[name='explanation']"
  element :resolution_field, "input[name='resolution']"
  element :min_val_field, "input[name='minval']"
  element :max_val_field, "input[name='maxval']"
  element :esc_count_field, "input[name='escalateCount']"

  element :severity_dropdown, "input[name='severity']"
  element :event_class_dropdown, "input[name='eventClass']"
  element :event_class_dropdown_button, 'table[id*=event] .x-form-trigger'
end
