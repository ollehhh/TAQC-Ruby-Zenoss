# frozen_string_literal:true

class ToolBarSection < SitePrism::Section
  element :display_dropdown, "input[id^='detailnavcombo']"
  element :btn_acknowledge_events, "span[class='x-btn-icon acknowledge']"
  element :btn_close, "span[class='x-btn-icon close']"
  element :btn_refresh, "span[class='x-btn-icon refresh']"
  element :btn_new_window, "span[class='x-btn-icon newwindow']"
  element :drp_btn_status, '#event_panel-filter-eventState-btnInnerEl'
  element :drp_btn_severity, '#event_panel-filter-severity-btnInnerEl'
  elements :drp_unchecked, "div[class='x-component x-box-item x-component-default x-menu-item x-menu-item-unchecked']"
  elements :drp_list_checked, "div[class='x-component x-box-item x-component-default x-menu-item x-menu-item-checked']"
  elements :input_filters, '#event_paneldocked-filter-innerCt input'
  element :event_input, "table[id='event_panel-filter-eventClass-triggerWrap'] input[name='eventClass']"
  element :summary_input, "td[id='event_panel-filter-summary-bodyEl'] input[name='event_panel-filter-summary-inputEl']"
end
