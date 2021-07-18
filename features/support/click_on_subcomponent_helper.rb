# frozen_string_literal: true

# This module contains click on subcomponent helper method
module ClickOnSubcomponentHelper
  def click_on_subcomponent(subcomponent)
    @components_page = ComponentsPage.new
    @components_page.left_bar_section.find(:xpath, ".//td[contains(.,'#{subcomponent}')]").click
  end
end
World(ClickOnSubcomponentHelper)
