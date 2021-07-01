# frozen_string_literal: true

Given('that the user is logged in') do
  login_test_user
  sleep 10
end

Then(/^I should see that user is logged in$/) do
  @inf_page = InfPage.new
  expect(@inf_page.user_email_link.text.downcase).to have_content(ENV['EMAIL'])
end
