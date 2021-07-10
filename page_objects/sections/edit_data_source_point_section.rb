# frozen_string_literal: true

class EditDataSourcePointSection < SitePrism::Section
  elements :delete_buttons, '#editDataSource-body .x-box-item button'
  element :add_button, '#add_alias_button-btnEl'

  element :name_field, "input[name='newId']"
  element :oid_field, "input[name='oid']"
  element :description_field, "textarea[name='description']"
  element :create_cmd_field, "textarea[name='createCmd']"
  element :rdd_min_field, "input[name='rrdmin']"
  element :rdd_max_field, "input[name='rrdmax']"
  element :extra_tags_field, "textarea[name='tags']"

  element :rdd_type_dropdown, "input[name='rrdtype']"
  elements :rdd_type_dropdown_items, '.x-boundlist-list-ct ul li'
  elements :checkboxes, "tr[id*='checkboxfield']"
  element :alias_table, '#editDataSource-body .x-hbox-form-item tr'
end
