module SearchByURLHelper
  def search_url(url)
    @inf_page = InfPage.new
    @inf_page.devise_table.find("a[href='#{url}']").click()
  end
end

World(SearchByURLHelper)
