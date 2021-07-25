@component_interfaces @zenoss
Feature: I verify the data collected for 'Interfaces' component

  Background:
    Given that the user is logged in

  @component_interfaces @device1
  Scenario: Check the data collected on 'Interfaces' component page
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'Interfaces' subcomponent
    And I set 'eth0' value in filter field
    And I select 'Graphs' value from display drop down
    Then I should see name graph 'Data Throughput - /Server/SSH/Linux - qa-ubuntu-11.zenoss.lab - eth0'
    And I should see name graph 'Packet Throughput - /Server/SSH/Linux - qa-ubuntu-11.zenoss.lab - eth0'
    And I should see name graph 'Error Rate - /Server/SSH/Linux - qa-ubuntu-11.zenoss.lab - eth0'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I select 'Events' value from display drop down
    And I set '/App' event class and 'TEST' summary in fields
    Then I should see event with '/App' event class and 'TEST' summary in events table
    When I select 'Details' value from display drop down
    Then I should see the same value for 'Interface Name:' in details as on the table within column '2'
    And I should see the same value for 'IP Address (Primary):' in details as on the table within column '3'
    And I should see the same value for 'IP Addresses (All):' in details as on the table within column '3'
    And I should see the same value for 'Description:' in details as on the table within column '4'
    And I should see the same value for 'MAC Address:' in details as on the table within column '5'
    And I should see the same value for 'Administrative Status:' in details as on the table within column '7'
    And I should see the same value for 'Operational Status:' in details as on the table within column '8'
    And I should see 'qa-ubuntu-11.zenoss.lab' value for 'Device:' field
    And I should see 'ethernetCsmacd' value for 'Type:' field
    And I should see '10.0Gbps' value for 'Speed:' field
    And I should see 'unknown' value for 'Duplex Mode:' field
    And I should see '1500' value for 'MTU:' field
    And I should see '0' value for 'SNMP Index:' field
    When I select 'Templates' value from display drop down
    Then I should see 'ethernetCsmacd' value in template dropdown
    And I should see 'Data Throughput' value in graph def table
    And I should see 'Packet Throughput' value in graph def table
    And I should see 'Error Rate' value in graph def table
    And I should see 'intf' name and '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
    And I should see '75 percent utilization' name and '(here.speed or 1e12) / 8 * .75' maxval in thresholds table
    When I select 'Dependencies' value from display drop down
    And I click on dependencies button
    Then I should see 'Devices' dependent in dependencies table

  @component_interfaces @device2
  Scenario: Check the data collected on 'Interfaces' component page
    When I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device
    And I go to 'Interfaces' subcomponent
    And I set 'eth0' value in filter field
    And I select 'Graphs' value from display drop down
    Then I should see name graph 'Data Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see name graph 'Packet Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see name graph 'Error Rate - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I select 'Events' value from display drop down
    And I set '/App' event class and 'TEST' summary in fields
    Then I should see event with '/App' event class and 'TEST' summary in events table
    When I select 'Details' value from display drop down
    Then I should see the same value for 'Interface Name:' in details as on the table within column '2'
    And I should see the same value for 'IP Address (Primary):' in details as on the table within column '3'
    And I should see the same value for 'IP Addresses (All):' in details as on the table within column '3'
    And I should see the same value for 'Description:' in details as on the table within column '4'
    And I should see the same value for 'MAC Address:' in details as on the table within column '5'
    And I should see the same value for 'Administrative Status:' in details as on the table within column '7'
    And I should see the same value for 'Operational Status:' in details as on the table within column '8'
    And I should see 'qa-ubuntu-12.zenoss.lab' value for 'Device:' field
    And I should see 'ethernetCsmacd' value for 'Type:' field
    And I should see '10.0Gbps' value for 'Speed:' field
    And I should see 'unknown' value for 'Duplex Mode:' field
    And I should see '1500' value for 'MTU:' field
    And I should see '0' value for 'SNMP Index:' field
    When I select 'Templates' value from display drop down
    Then I should see 'ethernetCsmacd' value in template dropdown
    And I should see 'Data Throughput' value in graph def table
    And I should see 'Packet Throughput' value in graph def table
    And I should see 'Error Rate' value in graph def table
    And I should see 'intf' name and '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
    And I should see '75 percent utilization' name and '(here.speed or 1e12) / 8 * .75' maxval in thresholds table
    When I select 'Dependencies' value from display drop down
    And I click on dependencies button
    Then I should see 'Devices' dependent in dependencies table
