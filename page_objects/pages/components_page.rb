# frozen_string_literal: true

class ComponentsPage < SitePrism::Page
  section :left_bar_section, ComponentleftbarSection, '#detailContainer'
  section :main_bar, MainBarSection, '#devdetailbar'
  section :interfaces, ToolBar, '#component_card-body :first-child .x-toolbar'
  section :components_table, ComponentsTable, '#component_card div:nth-of-type(1) div'
end
