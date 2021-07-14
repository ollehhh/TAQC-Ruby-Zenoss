# frozen_string_literal: true

# This page describes modeler plugins page
class ModelerPluginsPage < SitePrism::Page
  section :available_selected_table, AvailableSelectedTableSection, "table[class*=' x-form-item x-container-default']"
  element :save_button, :xpath, "(//span[text()='Save'])[5]"
  element :cancel_button, :xpath, "(//span[text()='Cancel'])[5]"
  elements :path_doc_fields, '#device_modeler_plugins-body .x-field tr'
end