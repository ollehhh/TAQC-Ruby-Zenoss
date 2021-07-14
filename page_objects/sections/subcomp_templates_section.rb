# frozen_string_literal: true

class SubcomponentTemplatesSection < SitePrism::Section
  section :display_drop_down, DisplayDropDownSection, '.componenttbar'
  element :create_loc_copy_button, :xpath, "//span[text()='Create Local Copy']"
  element :delete_loc_copy_button, :xpath, "//span[text()='Delete Local Copy']"
  element :template_dropdown, "div[id^='contextcardpanel'] input[id^='combobox']"
  element :template_dropdown_items, '.x-boundlist-list-ct ul li'

  class SubcomponentDataSrcSection < SitePrism::Section
    element :add_data_src_button, "div[id*='DataSource'] .x-btn:nth-of-type(3) button"
    element :remove_data_src_button, "div[id*='DataSource'] .x-btn:nth-of-type(4) button"
    element :edit_options_dropdown, "div[id*='DataSource'] .x-btn-arrow button"
    elements :data_src_table, "div[id^='DataSourceTreeGrid'][id$=body] tr"
  end
  section :subcomp_data_src, SubcomponentDataSrcSection, "div[id^='DataSource']:not(div[id$='body'])"

  class SubcomponentThresholdsSection < SitePrism::Section
    element :add_threshold_button, '#component_template_threshold .x-btn:nth-of-type(3) button'
    element :delete_threshold_button, '#component_template_threshold .x-btn:nth-of-type(4) button'
    element :thresholds_details, '#component_template_threshold .x-btn:nth-of-type(5) button'
    elements :thresholds_table, '#component_template_threshold-body tr'
  end
  section :subcomp_thresholds, SubcomponentThresholdsSection, '#component_template_threshold'

  class SubcomponentGraphsDefSection < SitePrism::Section
    element :add_graph_def_button, "div[id*='graphgrid'] .x-btn:nth-of-type(3) button"
    element :delete_graph_def_button, "div[id*='graphgrid'] .x-btn:nth-of-type(4) button"
    element :manage_graph_def_dropdown, "div[id*='graphgrid'] .x-btn-arrow button"
    elements :graphs_def_table, "div[id*='graphgrid'][id$=body] tr"
  end
  section :subcomp_graph_def, SubcomponentGraphsDefSection, "div[id^='graphgrid']:not(div[id$='body']"
end
