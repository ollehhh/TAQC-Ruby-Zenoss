# frozen_string_literal:  true

class MainBarSection < SitePrism::Section
  element :link, '.x-toolbar-text a.z-entity'
  elements :severity_icons, '#detailrainbow td'
  element :up, '.x-toolbar-text .status-up-large'
  element :btn_smart_view, '#zclinkitem .x-toolbar-text a'
end
