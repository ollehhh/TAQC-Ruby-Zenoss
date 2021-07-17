# frozen_string_literal: true

# This module contains login helpers methods
module SearchDevicebyfilterHelper
  def search_filter (name_device, ip_address, device_class)
    @inf_page = InfPage.new
    @inf_page.device_field_filter.set "#{name_device}"
    @inf_page.ip_address_field_filter.set "#{ip_address}"
    @inf_page.device_class_field_filter.set "#{device_class}"
  end

  def click_by_filtered_device
    @inf_page.devise_table.trs[0].td_element_device.click
  end

  def clear_filters
    @inf_page.functional_button[3].click
    @inf_page.clear_filters.click
  end
end

World(SearchDevicebyfilterHelper)

