# frozen_string_literal:  true

class DeviceIdSection < SitePrism::Section
  elements :labels, '#deviceoverviewpanel_summary td label'
  elements :values, '#deviceoverviewpanel_summary .x-form-display-field'
end

class SystemsSection < SitePrism::Section
  elements :labels, '#deviceoverviewpanel_systemsummary td label'
  elements :values, '#deviceoverviewpanel_systemsummary .x-form-display-field'
  element :show_links, '#links-label a'
  element :comments_input, '#comments-textarea-inputEl'
  element :btn_save_global, '.savebtn-buttondeviceoverviewpanel_systemsummary'
  element :btn_cancel_global, '.cancelbtn-buttondeviceoverviewpanel_systemsummary'
end

class DeviceNameSection < SitePrism::Section
  elements :labels, '#deviceoverviewpanel_idsummary td label'
  elements :values, '#deviceoverviewpanel_idsummary input'
  element :btn_save, '.savebtn-buttondeviceoverviewpanel_idsummary'
  element :btn_cancel, '.cancelbtn-buttondeviceoverviewpanel_idsummary'
end

class CollectorSection < SitePrism::Section
  elements :labels, '#deviceoverviewpanel_descriptionsummary table div label'
  elements :values, '#deviceoverviewpanel_descriptionsummary .x-form-display-field'
end

class SnmpSysnameSection < SitePrism::Section
  elements :labels, '#deviceoverviewpanel_snmpsummary table div label'
  elements :values, '#deviceoverviewpanel_snmpsummary .x-form-display-field'
end
