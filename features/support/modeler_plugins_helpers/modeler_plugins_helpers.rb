# frozen_string_literal: true

# This module contains helper methods for modeler plugins page
module ModelerPluginsHelper
  def check_selected_modeler_plugins(plugin)
    @modeler_plugins_page = ModelerPluginsPage.new
    begin
      expect(@modeler_plugins_page.available_selected_table).to have_content plugin
    rescue Capybara::ElementNotFound
      retry
    end
  end

  def check_modeler_plugin_path(plugin_path)
    @modeler_plugins_page = ModelerPluginsPage.new
    expect(@modeler_plugins_page.path_field).to have_content plugin_path
  end

  def find_buttons_container
    expect(page).to have_css('.x-form-fieldcontainer .x-form-itemselector-top')
  end

  def find_save_cancel_buttons
    expect(page).to have_xpath("(//span[text()='Save'])[5]")
    expect(page).to have_xpath("(//span[text()='Cancel'])[5]")
  end
end
World(ModelerPluginsHelper)
