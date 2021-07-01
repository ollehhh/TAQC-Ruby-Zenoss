# frozen_string_literal: true

# This module contains login helpers methods
module LoginHelper
  def login_test_user
    @login_page = LoginPage.new
    @login_page.load

    @login_page.login_field.set(ENV['EMAIL'])
    @login_page.password_field.set(ENV['PASSWORD'])
    @login_page.login_button.click
    begin
      expect(page).to have_content 'Go ahead. Find something to Smart View!'
    rescue RSpec::Expectations::ExpectationNotMetError
      retry
    end

    @inf_page = InfPage.new
    @inf_page.load
  end
end

World(LoginHelper)
