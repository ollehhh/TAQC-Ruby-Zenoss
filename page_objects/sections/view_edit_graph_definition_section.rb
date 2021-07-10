# frozen_string_literal: true

class ViewEditGraphDefinitionSection < SitePrism::Section
  element :name_field, "input[name='newId']"
  element :height_field, "input[name='height']"
  element :units_field, "input[name='units']"
  element :min_y_field, "input[name='miny']"
  element :max_y_field, "[name='maxy']"
  element :description_field, "textarea[name='description']"
  elements :checkboxes, "tr[id*='checkboxfield']"
end
