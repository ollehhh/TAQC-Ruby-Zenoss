# frozen_string_literal: true

# This section is responsible for the groups list left table.
class GroupsSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrGroupsSection < SitePrism::Section
    element :td_element_groups, 'tr.x-grid-row > td'
  end
  sections :trs, TrGroupsSection, 'tr'
end
