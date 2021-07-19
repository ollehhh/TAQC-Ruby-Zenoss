# frozen_string_literal: true
class ComponentGraphsPage < SitePrism::Page
  elements :list_li, 'div.x-boundlist li'
  elements :dropdown_button, 'div.x-form-trigger-last.x-unselectable'
  element :field_dropdown, 'div.x-boundlist-list-ct'
end
