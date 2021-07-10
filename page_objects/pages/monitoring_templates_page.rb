# frozen_string_literal: true

class MonitoringTemplatesPage < SitePrism::Page
  section :thresholds, ThresholdsSection, '#thresholdGrid'
  section :data_sources, DataSourcesSection, '#dataSourceTreeGrid'
  section :graphs_definition, GraphsDefinitionSection, '#graphGrid'
  section :data_src_popups, DataSourcePopupsSection, '.x-window.x-layer.x-window-default '
  section :edit_data_source_point, EditDataSourcePointSection, '#editDataSource'
  section :view_edit_graph_definition, ViewEditGraphDefinitionSection, '#viewGraphDefinitionDialog'
  section :edit_threshold, EditThresholdSection, '#editThresholdDialog'
  section :available_selected_table, AvailableSelectedTableSection, '#thresholdItemSelector-inputRow'
end
