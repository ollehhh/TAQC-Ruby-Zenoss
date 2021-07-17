@device_modeler_plugins
Feature: I verify device modeler plugins
  As a visitor
  I want to be able to verify device modeler plugins
  Background:
    Given that the user is logged in

  Scenario: Check the list of selected modeler plugins
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'Modeler Plugins' component
    Then I should see 'zenoss.cmd.uname' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.df' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.cpuinfo' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.interfaces' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.lvm' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.memory' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.netstat_an' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.netstat_rn' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.process' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.sudo_dmidecode' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.os_release' plugin in selected modeler plugins
    And I should see 'zenoss.cmd.linux.os_service' plugin in selected modeler plugins
    And I should see '/Server/SSH/Linux' plugin_path below path field
    And I should see button container
    And I should see save and cancel buttons
