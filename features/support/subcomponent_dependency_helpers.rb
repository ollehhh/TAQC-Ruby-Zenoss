# frozen_string_literal: true

# This module contains helper methods for components page
module SubcomponentDependencyHelpers
  def click_dependencies_btn
    @components_page = ComponentsPage.new
    @components_page.subcomp_dependency.dependencies_button.click
  end

  def open_dependencies_table
    @components_page = ComponentsPage.new
    @components_page.subcomp_dependency.dependency_table.click
  end

  def check_device_name(device_name)
    @components_page = ComponentsPage.new
    expect(@components_page).to have_content device_name
  end
end
World(SubcomponentDependencyHelpers)

