@device_monitoring_templates
Feature: I verify device monitoring templates
  As a visitor
  I want to be able to verify device monitoring templates

  Background:
    Given that the user is logged in

  Scenario: Check values in graph definition table
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'Device (/Server/SSH/Linux)' component
    Then I should see 'CPU Utilization' value in graph definition table
    And I should see 'Load Average' value in graph definition table
    And I should see 'Memory Utilization' value in graph definition table
    And I should see 'Memory Usage' value in graph definition table
    And I should see 'IO Throughput' value in graph definition table
    And I should see remove, add and edit buttons above the tables

  Scenario: Check values in data sources table
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'Device (/Server/SSH/Linux)' component
    Then I should see 'cpu' name
    And I should see '/usr/bin/env cat /proc/stat over SSH' source
    And I should see 'io' name
    And I should see '/usr/bin/env cat /proc/diskstats over SSH' source
    And I should see 'mem' name
    And I should see '/usr/bin/env cat /proc/meminfo over SSH' source
    And I should see 'ssh' name
    And I should see '/usr/bin/env echo TEST over SSH' source
    And I should see 'uptime' name
    And I should see '/usr/bin/env uptime over SSH' source