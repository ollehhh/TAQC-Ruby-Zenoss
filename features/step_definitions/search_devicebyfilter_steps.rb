# frozen_string_literal: true

When('I set fields filter {string}, {string}, {string} and click on device') do |device_name, ip_address, device_class|
  clear_filters
  search_filter device_name, ip_address, device_class
end

When(/^I should see '([^"]*)' value for '([^"]*)' field$/) do |name_field, value|
  check_values name_field, value
end

When(/^I should see comment input for '([^"]*)' field$/) do |comment|
  comment_input comment
end

When('I should see two buttons save and cancel on center') do
  buttons_save_center
end

When('I should see two buttons save and cancel at the bottom of the page') do
  buttons_save_down
end
