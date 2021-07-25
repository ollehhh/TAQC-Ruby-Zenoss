# frozen_string_literal: true

# This module is responsible for graphs on component pages, component graphs, graphs
module GraphsHelper
  def name_graphs(name)
    @graphs_page = GraphsPage.new
    names = @graphs_page.graphs_section.graphs.map(&:name_graph).map(&:text)
    expect(names).to include(name)
  end

  def metric_data
    @graphs_page.graphs_section.graphs.each do
      expect(page).to have_css('.zenfooter .zenfooter_content')
    end
  end

  def valid_data_metric(n_a)
    @graphs_page.graphs_section.graphs.each do |el_graphs|
      el_graphs.metric_elements.each do |el_metric|
        expect(el_metric.text).not_to have_text(n_a)
      end
    end
  end

  def component_graphs(component, graphs)
    @component_graphs = ComponentGraphsPage.new
    @component_graphs.dropdown_button[2].click
    names = @component_graphs.list_li.map(&:text)
    expect(names).to include(component)
    find('li.x-boundlist-item', text: component, exact_text: true).click
    @component_graphs.dropdown_button[3].click
    names = @component_graphs.list_li.map(&:text)
    expect(names).to include(graphs)
    find('li.x-boundlist-item', text: graphs, exact_text: true).click
    sleep 1
  end
end

World(GraphsHelper)
