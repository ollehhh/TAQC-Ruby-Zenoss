# frozen_string_literal:true

class ToolBar < SitePrism::Section
  element :customize, '#component_card-body .x-box-inner :nth-of-type(3) .x-btn-arrow button'
  element :delete, ".x-btn span[class= 'x-btn-icon delete']"
  element :select, '#component_card-body :nth-child(5) .x-btn-arrow button'
  element :btn_smart_view2, '#component-smart-view-button .x-btn-center'
  element :input_filter, "input[id='component_searchfield-inputEl']"
end

class ComponentsTable < SitePrism::Section
  elements :all_td, '#component_card-body :nth-of-type(1) .x-grid-cell-inner'
  elements :column_1st, '.x-grid-row :nth-child(1) .severity-icon-small'
  elements :column_1a, '#component_card-body .x-grid-row :nth-of-type(1) .x-grid-cell-inner'
  elements :column_2nd, '.x-grid-row :nth-child(2) div '
  elements :column_3d, '.x-grid-row :nth-child(3) div'
  elements :column_4th, '.x-grid-row :nth-child(4) div'
  elements :column_5th, '.x-grid-row :nth-child(5) div'
  elements :column_6th, '.x-grid-row :nth-child(6) div'
  elements :column_7th, '.x-grid-row :nth-child(7) div'
  elements :column_8th, '.x-grid-row :nth-child(8) div'
  elements :column_9th, '.x-grid-row :nth-child(9) div'
  elements :column_10th, '.x-grid-row :nth-child(10) div'
  elements :column_11th, '.x-grid-row :nth-child(11) div'
end

