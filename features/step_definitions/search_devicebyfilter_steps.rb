When('I set fields filter {string}, {string}, {string} and click on device') do |device_name, ip_address, device_class|
  clear_filters
  search_filter device_name, ip_address, device_class
end

Then('I should see device overview page') do
  pending # Write code here that turns the phrase above into concrete actions
end
