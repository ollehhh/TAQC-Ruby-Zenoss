# frozen_string_literal: true

# This page is responsible for the elements in the component graphs page
class ComponentGraphsPage < SitePrism::Page
  elements :list_li, 'div.x-boundlist li'
  elements :dropdown_button, 'div.x-form-trigger-last.x-unselectable'
  element :field_dropdown, 'div.x-boundlist-list-ct'
end
