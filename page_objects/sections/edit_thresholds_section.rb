# frozen_string_literal: true

class EditThresholdSection < SitePrism::Section
  element :test_with_rpn_button, 'button#testDeviceButton-btnEl'
  element :esc_count_spinner_up, '.x-form-spinner-up'
  element :esc_count_spinner_down, '.x-form-spinner-down'
  element :enabled_checkbox, "tr[id*='checkboxfield']"

  element :name_field, "input[name='newId']"
  element :description_field, "input[name='description']"
  element :explanation_field, "input[name='explanation']"
  element :resolution_field, "input[name='resolution']"
  element :min_val_field, "input[name='minval']"
  element :max_val_field, "input[name='maxval']"
  element :esc_count_field, "input[name='escalateCount']"

  element :severity_dropdown, "input[name='severity']"
  elements :severity_dropdown_items, '.x-boundlist-floating ul li'
  element :severity_dropdown_button, 'table[id*=severity] .x-form-trigger'

  element :event_class_dropdown, "input[name='eventClass']"
  elements :event_class_dropdown_items, '.x-boundlist-above ul li'
  element :event_class_dropdown_button, 'table[id*=event] .x-form-trigger'
end
