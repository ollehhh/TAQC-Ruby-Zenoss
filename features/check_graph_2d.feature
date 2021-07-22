@graphs_page
Feature: User can check data on graphs page

  Background:
    Given that the user is logged in
    Given I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device

  Scenario: Check user can see graphs name and metric data that cannot be N/A
    When I click graphs component
    When I should see name graph 'CPU Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab'
    When I should see name graph 'Load Average - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab'
    When I should see name graph 'Memory Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab'
    When I should see name graph 'Memory Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab'
    When I should see name graph 'IO Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab'
      And I should see metric data
    Then metric data dont have 'N/A' value
