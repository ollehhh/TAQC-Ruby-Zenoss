# frozen_string_literal: true

# This page describe monitoring templates page
class MonitoringTemplatesPage < SitePrism::Page
  class DataSourcesSection < SitePrism::Section
    element :add_data_src_button, '#dataSourceTreeGrid .x-btn:nth-of-type(1) button'
    element :remove_data_src_button, '#dataSourceTreeGrid .x-btn:nth-of-type(2) button'
    element :edit_options_dropdown, '#dataSourceTreeGrid .x-btn-arrow button'
    elements :edit_options_dropdown_items, '.x-panel-body.x-menu-body span'
    elements :data_src_table, '#dataSourceTreeGrid-body div table tbody tr'
  end
  section :data_sources, DataSourcesSection, '#dataSourceTreeGrid'

  class ThresholdsSection < SitePrism::Section
    element :add_threshold_button, '#thresholdGrid .x-btn:nth-of-type(1) button'
    element :delete_threshold_button, '#thresholdGrid .x-btn:nth-of-type(2) button'
    element :thresholds_details, '#thresholdGrid .x-btn:nth-of-type(3) button'
    elements :thresholds_table, '#thresholdGrid-body div table tbody tr'
  end
  section :thresholds, ThresholdsSection, '#thresholdGrid'

  class GraphsDefinitionSection < SitePrism::Section
    element :add_graph_def_button, '#graphGrid .x-btn:nth-of-type(1) button'
    element :delete_graph_def_button, '#graphGrid .x-btn:nth-of-type(2) button'
    element :manage_graph_def_dropdown, '#graphGrid .x-btn-arrow button'
    elements :graphs_def_table, '#graphGrid-body div table tbody tr'
  end
  section :graphs_definition, GraphsDefinitionSection, '#graphGrid'
  section :float_popups, FloatPopupsSection, '.x-window.x-layer.x-window-default '
  section :edit_data_source_point, EditDataSourcePointSection, '#editDataSource'
  section :edit_graph_definition, EditGraphDefinitionSection, '#viewGraphDefinitionDialog'
  section :edit_threshold, EditThresholdSection, '#editThresholdDialog'
end
