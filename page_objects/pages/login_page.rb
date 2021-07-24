# frozen_string_literal: true

class LoginPage < SitePrism::Page
  set_url(ENV['ROOT_URL'])

  element :login_field, "input[name = 'email']"
  element :password_field, "input[name = 'password']"
  element :login_button, "span[class='auth0-label-submit']"
  element :explore_button, '.v-btn--has-bg .v-btn__content'
end
