# frozen_string_literal: true

# This module contains helper methods for components page
module ComponentEventsHelpers
  def set_values_in_fields(event_class, summary)
    @components_page = ComponentsPage.new
    @components_page.events_display.event_input.set "#{event_class}"
    @components_page.events_display.summary_input.set "#{summary}"
  end

  def check_event(event_class, summary)
    @components_page = ComponentsPage.new
    @components_page.find(:xpath, ".//td[contains(.,'#{event_class}')]")
    @components_page.find(:xpath, ".//td[contains(.,'#{summary}')]")
  end
end
World(ComponentEventsHelpers)
