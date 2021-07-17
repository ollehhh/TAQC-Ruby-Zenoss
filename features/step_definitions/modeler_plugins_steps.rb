# frozen_string_literal: true

When('I go to {string} component') do |component|
  click_on_component(component)
end
Then('I should see {string} plugin in selected modeler plugins') do |plugin|
  check_selected_modeler_plugins(plugin)
end
Then('I should see {string} plugin_path below path field') do |plugin_path|
  check_modeler_plugin_path(plugin_path)
end
Then('I should see button container') do
  find_buttons_container
end
Then('I should see save and cancel buttons') do
  find_save_cancel_buttons
end




