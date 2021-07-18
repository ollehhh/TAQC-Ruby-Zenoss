@subcomponent_file_systems
Feature: I verify 'File Systems' subcomponent

  Background:
    Given that the user is logged in

  Scenario: Check values on 'File Systems' subcomponent page
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'File Systems ' subcomponent
    And I select 'Templates' value from display drop down
    Then I should see 'FileSystem' value in template dropdown
    And I should see 'Utilization' value in graph def table
    And I should see 'Usage' value in graph def table
    And I should see 'Inode Utilization' value in graph def table
    And I should see 'Inode Usage' value in graph def table
    And I should see 'disk' name in data source table
    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
    And I should see 'idisk' name in data source table
    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
    And I should see 'percent used' name in thresholds table
    And I should see '90' maxval in thresholds table

    When I select 'Dependencies' value from display drop down
    And I click on dependencies button
    And I open dependencies table
    Then I should see 'qa-ubuntu-11.zenoss.lab' device_name










