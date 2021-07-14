# frozen_string_literal: true

# This page describes monitoring templates page
class MonitoringTemplatesPage < SitePrism::Page
  # This section describes buttons and tables
  class MonitorTemplBtnTableSection < SitePrism::Section
    element :add_button, '.x-btn:nth-of-type(1) button'
    element :remove_button, '.x-btn:nth-of-type(2) button'
    element :edit_dropdown_button, '.x-btn:nth-of-type(3) button'
    elements :table, '.x-grid-table tr'
  end

  # This section describes Data Source section
  class DataSourcesSection < SitePrism::Section
    section :monitor_templ_btn_table, MonitorTemplBtnTableSection, '#dataSourceTreeGrid'
    elements :dropdown_items, '.x-panel-body.x-menu-body span'
  end
  section :data_sources, DataSourcesSection, '#dataSourceTreeGrid'
  # This section describes Thresholds section
  class ThresholdsSection < SitePrism::Section
    section :monitor_templ_btn_table, MonitorTemplBtnTableSection, '#thresholdGrid'
  end
  section :thresholds, ThresholdsSection, '#thresholdGrid'
  # This section describes Graphs Definition section
  class GraphsDefinitionSection < SitePrism::Section
    section :monitor_templ_btn_table, MonitorTemplBtnTableSection, '#graphGrid'
  end
  section :graphs_definition, GraphsDefinitionSection, '#graphGrid'
  section :float_popups, FloatPopupsSection, '.x-window.x-layer.x-window-default '
  section :edit_data_source_point, EditDataSourcePointSection, '#editDataSource'
  section :edit_graph_definition, EditGraphDefinitionSection, '#viewGraphDefinitionDialog'
  section :edit_threshold, EditThresholdSection, '#editThresholdDialog'
end
