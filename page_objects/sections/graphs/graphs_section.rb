# frozen_string_literal: true

# This section is responsible for the graphs and getting data from the graph.
class GraphsSection < SitePrism::Section
  # Selecting the trs section from the list graphs
  class GraphSection < SitePrism::Section
    element :name_graph, 'div.x-toolbar div.x-form-display-field'
    elements :metric_elements, 'div.zenfooter tr.zenfooter_value_row td.zenfooter_data'
  end

  sections :graphs, GraphSection, 'div.x-container div.x-panel.graph-panel'
end
