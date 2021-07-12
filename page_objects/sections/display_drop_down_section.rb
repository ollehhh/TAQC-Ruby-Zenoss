# frozen_string_literal: true

class DisplayDropDownSection < SitePrism::Section
  element :display_dropdown, "input[id^='detailnavcombo']"
  elements :display_dropdown_items, '.x-boundlist-list-ct ul li'
  element :display_dropdown_button, "table[id^='detailnavcombo'] .x-form-arrow-trigger"
end