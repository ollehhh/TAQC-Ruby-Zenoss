# frozen_string_literal: true

When('I go to {string} subcomponent') do |subcomponent|
  click_on_subcomponent(subcomponent)
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
When('I open dependencies table') do
  open_dependencies_table
end
Then('I should see {string} device_name') do |device_name|
  check_device_name(device_name)
end




