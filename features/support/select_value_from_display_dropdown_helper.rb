# frozen_string_literal: true

# This module contains helper methods for selecting value from display drop down on components page
module GetValFromDisplDropdownHelper
  def get_val_from_displ_drop_down(value)
    @components_page = ComponentsPage.new
    @components_page.display_drop_down_section.display_dropdown_button.click
    @components_page.find(:xpath, ".//li[contains(.,'#{value}')]").click
  end
end
World(GetValFromDisplDropdownHelper)
