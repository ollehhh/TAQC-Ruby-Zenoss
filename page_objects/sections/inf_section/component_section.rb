# frozen_string_literal: true

# This section is responsible for the ComponentsGroups table.
class ComponentGroupsSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrComponentSection < SitePrism::Section
    element :td_element_component, 'tr.x-grid-row > td'
  end
  sections :trs, TrComponentSection, 'tr'
end
