# frozen_string_literal:  true

class DisplayDrpDetailsSection < SitePrism::Section
  element :display_dropdown, "input[id^='detailnavcombo']"
  elements :display_dropdown_elements, '.x-boundlist-list-ct li.x-boundlist-item'
  elements :labels, '.x-fieldset-body td label'
  elements :values, '.x-fieldset-body .x-form-display-field'
end
