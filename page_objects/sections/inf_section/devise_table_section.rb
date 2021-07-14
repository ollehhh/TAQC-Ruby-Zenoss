# frozen_string_literal: true

# This section is responsible for the device list middle table.
class DeviseTableSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrSection < SitePrism::Section
    element :td_element_device, 'tr.x-grid-row > td:nth-of-type(1) a'
  end
  sections :trs, TrSection, 'tr'
end
