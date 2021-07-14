# frozen_string_literal: true

# This section is responsible for the location list left table.
class LocationsSection < SitePrism::Section
  # Selecting the trs section from the table
  class TrLocationsSection < SitePrism::Section
    element :td_element_location, 'tr.x-grid-row > td'
  end
  sections :trs, TrLocationsSection, 'tr'
end
