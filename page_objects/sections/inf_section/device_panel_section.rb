# frozen_string_literal: true

# This section is responsible for the device list left table.
class DevisePanelSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrleftSection < SitePrism::Section
    element :td_element, 'tr.x-grid-row > td'
  end
  sections :trs, TrleftSection, 'tr'
end
