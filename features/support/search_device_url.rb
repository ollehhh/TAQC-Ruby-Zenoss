# frozen_string_literal: true

# This module is responsible for finding a device by URL
module SearchByURLHelper
  def search_url(url)
    @inf_page = InfPage.new
    @inf_page.devise_table.find("a[href='#{url}']").click
  end
end

World(SearchByURLHelper)
