When('I click graphs component') do
  click_on_graphs
end
When('I should see name graph {string}') do |name_graph|
  name_graphs name_graph
end

When('I should see metric data') do
  metric_data
end

Then('metric data dont have {string} value') do |n_a|
  valid_data_metric n_a
end

