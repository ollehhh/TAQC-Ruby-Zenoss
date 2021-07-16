# frozen_string_literal:true

class EventsToolSection < SitePrism::Section
  element :btn_acknowledge_events, '#events_toolbar_ack-btnEl'
  element :btn_close_events, '#events_toolbar_close_events-btnEl'
  element :btn_reclassify_events, '#events_toolbar_reclassify_event-btnEl'
  element :btn_unacknowledge_events, '#events_toolbar_unack-btnEl'
  element :btn_reopen_events, '#events_toolbar_reopen-btnEl'
  element :btn_add_log, "span[class='x-btn-icon addslide']"
  element :btn_add_event, '#add_event_main_button-btnEl'
  element :drp_select, '#select-button'
  element :drp_btn_all, '.x-component:nth-of-type(1) .x-menu-item-text'
  element :drp_btn_none, '.x-component:nth-of-type(2) .x-menu-item-text'
  element :btn_export, ' .x-btn:nth-child(10) button'
  element :drp_configure, '#configure-button-btnEl'
  element :chck_act_events, '#excludenonactionables_checkitem-checkEl'
  element :chck_severity_row, '#rowcolors_checkitem-checkEl'
  element :drp_btn_clear_filter, '#clearfilters-textEl'
  element :drp_btn_adj_columns, '#adjust_columns_item_selector-textEl'
  element :drp_btn_res_def, '.x-vertical-box-overflow-body :nth-child(5)'
  element :last_updt_info, '#lastupdated'
  element :btn_refresh, '#refresh-button-btnEl'
  element :drp_btn_5sec, '#evc_refresh-targetEl :nth-child(2) span'
  element :drp_btn_10sec, '#evc_refresh :nth-child(3) span'
  element :drp_btn_30sec, '#evc_refresh :nth-child(4) span'
  element :drp_btn_1min, '#evc_refresh :nth-child(5) span'
  element :drp_btn_manually, '#evc_refresh :nth-child(6) span'
  element :drp_events, '#history_combo-inputEl'
  elements :drp_events, '.x-boundlist ul:nth-child(1) li'
end

class EventsFilterSection < SitePrism::Section
  element :drp_btn_status, '#device_events-filter-eventState-btnEl'
  element :drp_btn_severity, '#device_events-filter-severity-btnInnerEl'
  elements :drp_list_unchecked, 'div.x-menu-item-unchecked'
  elements :drp_list_checked, 'div.x-menu-item-checked'
  elements :input_filters, '#device_eventsdocked-filter-innerCt .x-form-field'
end

class PopUpExportSection < SitePrism::Section
  elements :input_fields, '.x-window  input'
  elements :input_list_elements, '.x-boundlist .x-boundlist-item'
  element :btn_submit, "(//span[text()='Submit'])"
  element :btn_cancel, "(//span[text()='Cancel'])"
  element :btn_close, '.x-window .x-tool-close'
end

class PopUpAdjustColumnsSection < SitePrism::Section
  element :btn_close, '.x-window .x-tool-close'
  elements :column_list, '.x-boundlist-list-ct li.x-boundlist-item'
  element :btn_move_top, "span[class='x-btn-icon x-form-itemselector-top']"
  element :btn_move_up, "span[class='x-btn-icon x-form-itemselector-up']"
  element :btn_add_to_selected, "span[class='x-btn-icon x-form-itemselector-add']"
  element :btn_remove_from_selected, "span[class='x-btn-icon x-form-itemselector-remove']"
  element :btn_move_down, "span[class='x-btn-icon x-form-itemselector-down']"
  element :btn_move_bottom, "span[class='x-btn-icon x-form-itemselector-bottom']"
  element :btn_submit, "(//span[text()='Submit'])"
  element :btn_cancel, "(//span[text()='Cancel'])"
end

class PopUpRestoreDefaults < SitePrism::Section
  element :btn_close, '.x-window .x-tool-close'
  element :btn_cancel, "(//span[text()='OK'])"
  element :btn_cancel, "(//span[text()='Cancel'])"
end
