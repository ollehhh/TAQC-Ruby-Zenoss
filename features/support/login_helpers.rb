# frozen_string_literal: true

# This module contains login helpers methods
module LoginHelper
  def login_test_user
    @login_page = LoginPage.new
    @login_page.load
    @login_page.login_field.set(ENV['EMAIL'])
    @login_page.password_field.set(ENV['PASSWORD'])
    @login_page.login_button.click
    if page.has_content?('rpc error: code = Internal desc = unable to create session')
      page.driver.browser.navigate.refresh
    end
    expect(page).to have_content 'Go ahead. Find something to Smart View!'
    @login_page.explore_button.click
  end
end

World(LoginHelper)
