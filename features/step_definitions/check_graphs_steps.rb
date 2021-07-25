# frozen_string_literal: true

When('I click graphs component') do
  click_on_graphs
end

When('I should see name graph {string}') do |name_graph|
  name_graphs name_graph
end

When('I should see metric data') do
  metric_data
end

When('I refresh page so that metric data appears') do
  page.driver.browser.navigate.refresh
end

Then('metric data dont have {string} value') do |n_a|
  valid_data_metric n_a
end

When('I click component graphs') do
  click_on_component_graphs
end

When('I on component {string} and graphs {string}') do |component, graphs|
  component_graphs component, graphs
end
