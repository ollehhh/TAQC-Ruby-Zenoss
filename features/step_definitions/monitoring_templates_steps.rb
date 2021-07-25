# frozen_string_literal: true

Then('I should see {string} value in graph definition table') do |value|
  check_templates_graph_def(value)
end
Then('I should see remove, add and edit buttons above the tables') do
  find_add_remove_edit_buttons
end
Then(/^I should see '([^"]*)' name and '([^"]*)' source$/) do |name, source|
  check_templates_data_src(name, source)
end
