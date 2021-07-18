module GraphsHelper
  def name_graphs name
    @graphs_page = GraphsPage.new
    @graphs_page.graphs_section.graphs.each do |el|
      if el.name_graph.text.to_s == name
        expect(el.text).to have_content(name)
      end
    end
  end

  def metric_data
    @graphs_page.graphs_section.graphs.each do
      expect(page).to have_css('#comments-textarea-inputEl')
    end
  end

  def valid_data_metric n_a
    @graphs_page.graphs_section.graphs.each do |el_graphs|
      el_graphs.metric_elements.each do |el_metric|
        expect(el_metric.text).not_to have_text(n_a)
      end
    end
  end
end

World(GraphsHelper)
