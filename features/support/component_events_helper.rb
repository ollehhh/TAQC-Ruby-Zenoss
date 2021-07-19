# frozen_string_literal: true

# This module contains helper methods for components page
module ComponentEventsHelpers
  def set_values_in_fields(event_class, summary)
    @components_page = ComponentsPage.new
    @components_page.find('#event_panel-filter-eventClass-inputEl').set "#{event_class}"
    @components_page.find('#event_panel-filter-summary-inputEl').set "#{summary}"
  end
end
World(ComponentEventsHelpers)
