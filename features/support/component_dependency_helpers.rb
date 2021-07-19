# frozen_string_literal: true

# This module contains helper methods for components page
module ComponentDependencyHelpers
  def click_dependencies_btn
    @components_page = ComponentsPage.new
    @components_page.subcomp_dependency.dependencies_button.click
  end

  def check_dependent(dependent)
    @components_page = ComponentsPage.new
    @components_page.all(:xpath, "//div[contains(@class, 'x-grid-group-title') and contains(.,'#{dependent}')]")
  end
end
World(ComponentDependencyHelpers)
