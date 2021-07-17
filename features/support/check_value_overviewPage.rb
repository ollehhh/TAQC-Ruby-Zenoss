# frozen_string_literal: true

# This module contains login helpers methods
module CheckValueHelper
  def check_values name_field, value
    # @overview_page = OverviewDevicePage.new
    expect(page).to have_content(name_field)
    expect(page).to have_content(value)
  end
  def comment_input comment
    expect(page).to have_content(comment)
    expect(page).to have_css('#comments-textarea-inputEl')
  end
  def buttons_save_center
    expect(page).to have_css('.savebtn-buttondeviceoverviewpanel_idsummary')
    expect(page).to have_css('.cancelbtn-buttondeviceoverviewpanel_idsummary')
  end
  def buttons_save_down
    expect(page).to have_css('.savebtn-buttondeviceoverviewpanel_systemsummary')
    expect(page).to have_css('.cancelbtn-buttondeviceoverviewpanel_systemsummary')
  end
end

World(CheckValueHelper)


