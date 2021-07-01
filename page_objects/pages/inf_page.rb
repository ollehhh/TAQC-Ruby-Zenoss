# frozen_string_literal: true

class InfPage < SitePrism::Page
  set_url(ENV['INF_PAGE_URL'])


  element :user_email_link, '#user-link-container'
end
