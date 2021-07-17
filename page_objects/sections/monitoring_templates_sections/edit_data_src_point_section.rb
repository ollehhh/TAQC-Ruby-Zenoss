# frozen_string_literal: true

require_relative '../at_popups_section'
# This section describes 'Edit Data Point' and 'Edit Data Source' popups
class EditDataSourcePointSection < SitePrism::Section
  section :float_popups, FloatPopupsSection, '#editDataSource'
  # This part of section describes 'Edit Data Point' popup
  elements :delete_buttons, '#editDataSource-body .x-box-item button'
  element :add_button, '#add_alias_button-btnEl'
  element :create_cmd_field, "textarea[name='createCmd']"
  element :rdd_min_field, "input[name='rrdmin']"
  element :rdd_max_field, "input[name='rrdmax']"
  element :extra_tags_field, "textarea[name='tags']"
  element :rdd_type_dropdown, "input[name='rrdtype']"
  element :alias_table, '#editDataSource-body .x-hbox-form-item tr'
  # This part of section describes 'Edit Data Source' popup
  element :event_class_dropdown, "input[name='eventClass']"
  element :parser_dropdown, "input[name='parser']"
  element :severity_dropdown, "input[name='severity']"
  element :component_field, "input[name='component']"
  element :cycle_time_field, "input[name='cycletime']"
  element :event_key_field, "input[name='eventKey']"
  element :cmd_template_field, "textarea[name='commandTemplate']"
end
