# frozen_string_literal: true

class InfPage < SitePrism::Page
  set_url(ENV['INF_PAGE_URL'])
  element :user_email_link, '#user-link-container'
  element :device_field_filter, '#device_grid-filter-name-inputEl'
  element :ip_address_field_filter, '#device_grid-filter-ipAddress-inputEl'
  element :device_class_field_filter, '#device_grid-filter-uid-inputEl'
  element :device_left_field_filter, 'div[id^="HierarchyTreePanelSearch"] input'
  element :clear_filters, '#nfrastructure_clearfilters-itemEl'
  elements :event_buttons, '#organizer_events table tr td'
  # advice button, delete button, select button, configure button, export button, refresh, actions, commands [0-7]
  elements :functional_button, '.x-toolbar.largetoolbar div.x-btn'
  elements :menu_panel_devices, '.x-component.x-menu-item-disabled a span'
  elements :menu_select_all, 'div.x-panel-body.x-menu-body div.x-component'
  elements :product_status, '.x-menu-item-link'
  elements :export_xml_csv, 'div.x-panel-body.x-menu-body div.x-component'
  section :devise_table, DeviseTableSection, '#device_grid .x-grid-table'
  section :devise_panel_table, DevisePanelSection, '#devices-body .x-grid-table'
  section :groups_table, GroupsSection, '#groups-body .x-grid-table'
  section :system_table, SystemSection, '#systemsTree-body .x-grid-table'
  section :locations_table, LocationsSection, '#locs-body .x-grid-table'
  section :component_groups_table, ComponentGroupsSection, '#componentGroupsTree-body .x-grid-table'
end
