# frozen_string_literal: true

# This section is responsible for the system list left table.
class SystemSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrSystemSection < SitePrism::Section
    element :td_element_system, 'tr.x-grid-row > td'
  end
  sections :trs, TrSystemSection, 'tr'
end
