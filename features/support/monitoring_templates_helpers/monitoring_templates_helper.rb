# frozen_string_literal: true

# This module contains helper methods for monitoring templates page
module MonitoringTemplatesHelpers
  def check_templates_graph_def(value)
    @monitoring_templates_page = MonitoringTemplatesPage.new
    expect(@monitoring_templates_page.graphs_definition).to have_content value
  end

  def find_add_remove_edit_buttons
    expect(page).to have_css('#montemplate-body .x-btn:nth-of-type(1) button', :count => 3)
    expect(page).to have_css('#montemplate-body .x-btn:nth-of-type(2) button', :count => 3)
    expect(page).to have_css('#montemplate-body .x-btn:nth-of-type(3) button', :count => 3)
  end

  # def check_templates_data_src(name, source)
  #   @monitoring_templates_page = MonitoringTemplatesPage.new
  #   sleep 5
  #   expect(@monitoring_templates_page.data_sources).to have_content name, source
  # end

  def check_templates_data_src_name(name)
    @monitoring_templates_page = MonitoringTemplatesPage.new
    sleep 5
    expect(@monitoring_templates_page.data_sources).to have_content name
  end

  def check_templates_data_src_src(source)
    @monitoring_templates_page = MonitoringTemplatesPage.new
    sleep 5
    expect(@monitoring_templates_page.data_sources).to have_content source
  end
end

World(MonitoringTemplatesHelpers)
