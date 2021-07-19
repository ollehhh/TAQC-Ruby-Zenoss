# frozen_string_literal: true

When('I go to {string} subcomponent') do |subcomponent|
  click_on_subcomponent(subcomponent)
end
When('I set {string} value in filter field') do |value|
  clear_filter
  set_value_to_filter(value)
end
When('I select {string} value from display drop down') do |value|
  get_val_from_displ_drop_down(value)
end
Then('I should see {string} value in template dropdown') do |value|
  check_templ_dropdown_value(value)
end
Then('I should see {string} value in graph def table') do |value|
  check_subcomp_templ_graph_def(value)
end
Then('I should see {string} name in data source table') do |name|
  check_subc_templ_data_src_name(name)
end
Then('I should see {string} source in data source table') do |source|
  check_subc_templ_data_src_src(source)
end
Then('I should see {string} name in thresholds table') do |name|
  check_sub_templ_trh_name(name)
end
Then('I should see {string} maxval in thresholds table') do |maxval|
  check_sub_templ_trh_max(maxval)
end
When('I click on dependencies button') do
  click_dependencies_btn
end
Then('I should see {string} dependent in dependencies table') do |dependent|
  check_dependent(dependent)
end
Then('I should see the same value for {string} in details as on the table within column {string}') do |value_title, column_number|
  compare_values_in_two_sections(value_title, column_number)
end
When('I set {string} event class and {string} summary in fields') do |event_class, summary|
  set_values_in_fields(event_class, summary)
end
Then('I should see event with {string} event class and {string} summary in events table') do |event_class, summary|
  check_event(event_class, summary)
end




