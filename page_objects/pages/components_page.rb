# frozen_string_literal: true

class ComponentsPage < SitePrism::Page
  set_url(ENV['COMPONENTS_PAGE_URL'])
  # section :main_bar, MainBarSection, '#devdetailbar'
  section :interfaces, ToolBar, '#ext-gen1656'
  section :components_table, ComponentsTable, '#component_card div:nth-of-type(1) div'
end
