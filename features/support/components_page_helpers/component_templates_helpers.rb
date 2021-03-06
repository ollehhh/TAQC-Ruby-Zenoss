# frozen_string_literal: true

# This module contains helper methods for components page
module ComponentTemplatesHelpers
  def check_templ_dropdown_value(value)
    @components_page = ComponentsPage.new
    @components_page.subcomp_templates.template_dropdown.click
    expect(@components_page).to have_content value
  end

  def check_subc_templ_data_src(name, source)
    @components_page = ComponentsPage.new
    expect(@components_page.subcomp_templates.subcomp_data_src).to have_content name
    expect(@components_page.subcomp_templates.subcomp_data_src).to have_content source
  end

  def check_sub_templ_trh(name, maxval)
    @components_page = ComponentsPage.new
    expect(@components_page.subcomp_templates.subcomp_thresholds).to have_content name
    expect(@components_page.subcomp_templates.subcomp_thresholds).to have_content maxval
  end

  def check_subcomp_templ_graph_def(value)
    @components_page = ComponentsPage.new
    begin
      expect(@components_page.subcomp_templates.subcomp_graph_def).to have_content value
    rescue RSpec::Expectations::ExpectationNotMetError
      retry
    end
  end
end
World(ComponentTemplatesHelpers)
