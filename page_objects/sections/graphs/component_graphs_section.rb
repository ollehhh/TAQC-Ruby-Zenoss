# frozen_string_literal: true

# This section is responsible for the filter component on component page.
class DropdownlistcomponentSection < SitePrism::Section
  # Selecting the list section from the dropdown menu
  class ListComponentSection < SitePrism::Section
    elements :list_li, 'div.x-boundlist li'
  end

  sections :list_button_dropdown_menu, ListComponentSection, 'div.x-box-inner table.x-hbox-form-item div.x-form-arrow-trigger'
end
