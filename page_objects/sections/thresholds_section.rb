# frozen_string_literal: true

class ThresholdsSection < SitePrism::Section
  element :add_threshold_button, '#thresholdGrid .x-btn:nth-of-type(1) button'
  element :delete_threshold_button, '#thresholdGrid .x-btn:nth-of-type(2) button'
  element :thresholds_details, '#thresholdGrid .x-btn:nth-of-type(3) button'
  elements :thresholds_table, '#thresholdGrid-body div table tbody tr'
end
