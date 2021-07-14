# frozen_string_literal: true

# This section describes 'display drop down' for all subcomponents
class DisplayDropDownSection < SitePrism::Section
  elements :display_dropdown_items, '.x-boundlist-list-ct ul li'
  element :display_dropdown_button, "table[id^='detailnavcombo'] .x-form-arrow-trigger"
end

