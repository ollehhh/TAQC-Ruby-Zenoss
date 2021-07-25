# frozen_string_literal: true

When('I set {string} url and click on device') do |url|
  clear_filters
  search_url url
end
