# frozen_string_literal: true

require_relative '../at_popups_section'
# This section describes 'Edit Graph Definition' popup
class EditGraphDefinitionSection < SitePrism::Section
  section :float_popups, FloatPopupsSection, '#viewGraphDefinitionDialog'
  element :height_field, "input[name='height']"
  element :units_field, "input[name='units']"
  element :min_y_field, "input[name='miny']"
  element :max_y_field, "[name='maxy']"
end
