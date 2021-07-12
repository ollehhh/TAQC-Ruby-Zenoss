# frozen_string_literal: true

require_relative 'float_popups_section'

class EditDataSourcePointSection < SitePrism::Section
  section :float_popups, FloatPopupsSection, '#editDataSource'

  elements :delete_buttons, '#editDataSource-body .x-box-item button'
  element :add_button, '#add_alias_button-btnEl'
  element :oid_field, "input[name='oid']"
  element :create_cmd_field, "textarea[name='createCmd']"
  element :rdd_min_field, "input[name='rrdmin']"
  element :rdd_max_field, "input[name='rrdmax']"
  element :extra_tags_field, "textarea[name='tags']"
  element :rdd_type_dropdown, "input[name='rrdtype']"
  element :alias_table, '#editDataSource-body .x-hbox-form-item tr'
end
