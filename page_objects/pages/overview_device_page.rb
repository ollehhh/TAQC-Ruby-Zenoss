# frozen_string_literal: true

class OverviewDevicePage < SitePrism::Page
  section :left_bar_section, ComponentleftbarSection, '#detailContainer'
  section :main_bar, MainBarSection, '#devdetailbar'
  section :device_info, DeviceIdSection, 'deviceoverviewpanel_summary'
  section :system_info, SystemsSection, 'deviceoverviewpanel_systemsummary'
  section :device_name, DeviceNameSection, '#deviceoverviewpanel_idsummary'
  section :collector, CollectorSection, '#deviceoverviewpanel_descriptionsummary'
  section :snp, SnmpSysnameSection, '#deviceoverviewpanel_snmpsummary'
end
