# frozen_string_literal: true

require_relative 'float_popups_section'

class EditGraphDefinitionSection < SitePrism::Section
  section :float_popups, FloatPopupsSection, '#viewGraphDefinitionDialog'

  element :height_field, "input[name='height']"
  element :units_field, "input[name='units']"
  element :min_y_field, "input[name='miny']"
  element :max_y_field, "[name='maxy']"
end
