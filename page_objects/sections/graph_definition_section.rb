# frozen_string_literal: true

class GraphsDefinitionSection < SitePrism::Section
  element :add_graph_def_button, '#graphGrid .x-btn:nth-of-type(1) button'
  element :delete_graph_def_button, '#graphGrid .x-btn:nth-of-type(2) button'
  element :manage_graph_def_dropdown, '#graphGrid .x-btn-arrow button'
  elements :graphs_def_table, '#graphGrid-body div table tbody tr'
end
