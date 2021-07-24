@component_ip_services @zenoss
Feature: I verify 'IP Services' component

  Background:
    Given that the user is logged in

  @component_ip_services_device1
  Scenario: Check values on 'IP Services' component page
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'IP Services ' subcomponent
    And I set 'ssh' value in filter field
    And I select 'Events' value from display drop down
    And I set '/App' event class and 'TEST' summary in fields
    Then I should see event with '/App' event class and 'TEST' summary in events table
    When I select 'Details' value from display drop down
    Then I should see the same value for 'Service Class:' in details as on the table within column '2'
    And I should see the same value for 'Protocol:' in details as on the table within column '3'
    And I should see the same value for 'Port:' in details as on the table within column '4'
    And I should see the same value for 'IP Addresses:' in details as on the table within column '5'
    And I should see the same value for 'Description:' in details as on the table within column '6'
    And I should see 'None' value for 'Status:' field
    And I should see 'qa-ubuntu-11.zenoss.lab' value for 'Device:' field
    And I should see '10.88.120.109' value for 'Management IP Address:' field
    And I should see 'zenoss.cmd.linux.netstat_an' value for 'Discovery Agent:' field
    And I should see 'Critical' value for 'Fail Severity:' field
    And I should see '' value for 'Send String:' field
    And I should see 'SSH' value for 'Expect Regex:' field
    When I select 'Templates' value from display drop down
    Then I should see 'IpService' value in template dropdown
    When I select 'Dependencies' value from display drop down
    And I click on dependencies button
    Then I should see 'Devices' dependent in dependencies table

  @component_ip_services_device2
  Scenario: Check values on 'IP Services' component page
    When I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device
    And I go to 'IP Services ' subcomponent
    And I set 'snmp' value in filter field
    And I select 'Events' value from display drop down
    And I set '/App' event class and 'TEST' summary in fields
    Then I should see event with '/App' event class and 'TEST' summary in events table
    When I select 'Details' value from display drop down
    Then I should see the same value for 'Service Class:' in details as on the table within column '2'
    And I should see the same value for 'Protocol:' in details as on the table within column '3'
    And I should see the same value for 'Port:' in details as on the table within column '4'
    And I should see the same value for 'IP Addresses:' in details as on the table within column '5'
    And I should see the same value for 'Description:' in details as on the table within column '6'
    And I should see 'None' value for 'Status:' field
    And I should see 'qa-ubuntu-12.zenoss.lab' value for 'Device:' field
    And I should see '10.88.120.110' value for 'Management IP Address:' field
    And I should see 'zenoss.cmd.linux.netstat_an' value for 'Discovery Agent:' field
    And I should see 'Critical' value for 'Fail Severity:' field
    And I should see '' value for 'Send String:' field
    And I should see '' value for 'Expect Regex:' field
    When I select 'Templates' value from display drop down
    Then I should see 'IpService' value in template dropdown
    When I select 'Dependencies' value from display drop down
    And I click on dependencies button
    Then I should see 'Devices' dependent in dependencies table
