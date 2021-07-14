# frozen_string_literal: true

# This sections describe subcomponent 'templates'
class SubcomponentTemplatesSection < SitePrism::Section
  section :display_drop_down, DisplayDropDownSection, '.componenttbar'
  element :create_loc_copy_button, :xpath, "//span[text()='Create Local Copy']"
  element :delete_loc_copy_button, :xpath, "//span[text()='Delete Local Copy']"
  element :template_dropdown, "div[id^='contextcardpanel'] input[id^='combobox']"
  element :template_dropdown_items, '.x-boundlist-list-ct ul li'
  # This section describes toolbar buttons and table
  class TemplatesButtonsTableSection < SitePrism::Section
    element :add_button, '.x-btn:nth-of-type(3) button'
    element :remove_button, '.x-btn:nth-of-type(4) button'
    element :edit_dropdown_button, '.x-btn:nth-of-type(5) button'
    elements :table, '.x-grid-table tr'
  end

  # This section describes subcomponent 'data source'
  class SubcomponentDataSrcSection < SitePrism::Section
    section :templ_btn_table, TemplatesButtonsTableSection, "div[id^='DataSource']:not(div[id$='body'])"
  end
  section :subcomp_data_src, SubcomponentDataSrcSection, "div[id^='DataSource']:not(div[id$='body'])"
  # This section describes subcomponent 'thresholds'
  class SubcomponentThresholdsSection < SitePrism::Section
    section :templ_btn_table, TemplatesButtonsTableSection, '#component_template_threshold'
  end
  section :subcomp_thresholds, SubcomponentThresholdsSection, '#component_template_threshold'
  # This section describes subcomponent 'graph definition'
  class SubcomponentGraphsDefSection < SitePrism::Section
    section :templ_btn_table, TemplatesButtonsTableSection, "div[id^='graphgrid']:not(div[id$='body'])"
  end
  section :subcomp_graph_def, SubcomponentGraphsDefSection, "div[id^='graphgrid']:not(div[id$='body'])"
end
