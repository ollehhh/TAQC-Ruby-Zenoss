# frozen_string_literal: true

# This module contains helper methods for components page
module ComponentsPageHelpers
  def clear_filter
    @components_page = ComponentsPage.new
    @components_page.find("input[id='component_searchfield-inputEl']").set ''
  end

  def set_value_to_filter(value)
    @components_page = ComponentsPage.new
    @components_page.find("input[id='component_searchfield-inputEl']").set "#{value}"
    page.driver.browser.action.send_keys(:enter).perform
    @components_page.find(:xpath, ".//tr[contains(.,'#{value}')]//td[1]", :match => :first).click
  end

  def compare_values_in_two_sections(value_title, column_number)
    @components_page = ComponentsPage.new
    @components_page.all(:xpath, "//td[contains(@class, 'x-form-item-body') and contains(.,'#{value_title}')]//div[2]").first.text
    @components_page.all(:xpath, "//tr[contains(@class, 'x-grid-row-focused')]//div[contains(.,'#{column_number.to_i}')]").first
  end

  def get_val_from_displ_drop_down(value)
    @components_page = ComponentsPage.new
    @components_page.display_drop_down_section.display_dropdown_button.click
    begin
      @components_page.find(:xpath, "//div[@class='x-boundlist-list-ct']//li[contains(.,'#{value}')]").click
    rescue Selenium::WebDriver::Error::ElementNotInteractableError
      retry
    end
  end
end
World(ComponentsPageHelpers)
