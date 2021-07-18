# frozen_string_literal: true

class ComponentsPage < SitePrism::Page
  section :display_drop_down_section, DisplayDropDownSection, "div[id^='contextcardpanel'] .componenttbar"
  section :subcomp_templates, SubcomponentTemplatesSection, "div[id^='contextcardpanel']:not(div[id$='body'])"
  section :subcomp_dependency, SubcomponentDependencySection, "div[id^='contextcardpanel']:not(div[id$='body'])"
  section :display_drop_details, DisplayDrpDetailsSection, "div[id^='contextcardpanel']:not(div[id$='body'])"
  section :events_display, ToolBarSection, "div[id^='contextcardpanel']:not(div[id$='body'])"
  section :component_graphs, DropdownlistcomponentSection, "div[id^='contextcardpanel']:not(div[id$='body'])"
  section :left_bar_section, ComponentleftbarSection, '#detailContainer'
  section :main_bar, MainBarSection, '#devdetailbar'
  section :interfaces, ToolBar, '#component_card-body :first-child .x-toolbar'
  section :components_table, ComponentsTable, '#component_card div:nth-of-type(1) div'
end
