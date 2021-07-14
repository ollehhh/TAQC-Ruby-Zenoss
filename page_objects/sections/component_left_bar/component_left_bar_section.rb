# frozen_string_literal: true

# This section is responsible for the Components left bar table on device detail page.
class ComponentleftbarSection < SitePrism::Section
  # Selecting the trs section from the table
  class ComponentSection < SitePrism::Section
    element :td_element, 'td'
  end
  sections :component_tr, ComponentSection, 'table.x-grid-table tr'
end
