@subcomponent_file_systems
Feature: I verify 'File Systems' subcomponent

  Background:
    Given that the user is logged in

  @qa-ubuntu-11.zenoss.lab_device
  Scenario: Check values on 'File Systems' subcomponent page
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    And I go to 'File Systems ' subcomponent
    And I set '/boot' value in filter field

    When I select 'Events' value from display drop down
    And I set '/App' event class and 'TEST' summary in fields

#    And I select 'Details' value from display drop down
#    Then I should see the same value for 'Mount:' in details as on the table within column '2'
#    And I should see the same value for 'Type:' in details as on the table within column '3'
#    And I should see the same value for 'Total Bytes:' in details as on the table within column '4'
#    And I should see the same value for 'Used Bytes:' in details as on the table within column '5'
#    And I should see the same value for '% Util:' in details as on the table within column '7'
#    And I should see 'Up' value for 'Status:' field
#    And I should see 'qa-ubuntu-11.zenoss.lab' value for 'Device:' field
#    And I should see '1024' value for 'Block Size:' field
#    And I should see '201512960' value for 'Available Bytes:' field
#    And I should see '11' value for 'Capacity Bytes:' field
#    And I should see '0' value for 'Total Files:' field
#    And I should see '0' value for 'Available Files:' field
#    And I should see '0' value for 'Capacity Files:' field
#    And I should see '0' value for 'Maximum Name Length:' field
#    And I should see 'None' value for 'Block Device:' field
#    And I should see 'None' value for 'LVM Logical Volume:' field
#    And I should see '/dev/sda1' value for 'Storage Dev:' field
#    When I select 'Templates' value from display drop down
#    Then I should see 'FileSystem' value in template dropdown
#    And I should see 'Utilization' value in graph def table
#    And I should see 'Usage' value in graph def table
#    And I should see 'Inode Utilization' value in graph def table
#    And I should see 'Inode Usage' value in graph def table
#    And I should see 'disk' name in data source table
#    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
#    And I should see 'idisk' name in data source table
#    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
#    And I should see '90 percent used' name in thresholds table
#    And I should see '90' maxval in thresholds table
#    When I select 'Dependencies' value from display drop down
#    And I click on dependencies button
#    Then I should see 'Devices' dependent in dependencies table
#
#
#  @qa-ubuntu-12.zenoss.lab_device
#  Scenario: Check values on 'File Systems' subcomponent page
#    When I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device
#    And I go to 'File Systems ' subcomponent
#    And I set '/boot' value in filter field
#    And I select 'Details' value from display drop down
#    Then I should see the same value for 'Mount:' in details as on the table within column '2'
#    And I should see the same value for 'Block Device:' in details as on the table within column '3'
#    And I should see the same value for 'Total Bytes:' in details as on the table within column '4'
#    And I should see the same value for 'Used Bytes:' in details as on the table within column '5'
#    And I should see the same value for '% Util:' in details as on the table within column '7'
#    And I should see 'Up' value for 'Status:' field
#    And I should see 'qa-ubuntu-12.zenoss.lab' value for 'Device:' field
#    And I should see 'ext2' value for 'Type:' field
#    And I should see '1024' value for 'Block Size:' field
#    And I should see '200464384' value for 'Available Bytes:' field
#    And I should see '12' value for 'Capacity Bytes:' field
#    And I should see '0' value for 'Total Files:' field
#    And I should see '0' value for 'Available Files:' field
#    And I should see '0' value for 'Capacity Files:' field
#    And I should see '0' value for 'Maximum Name Length:' field
#    And I should see 'None' value for 'LVM Logical Volume:' field
#    And I should see '/dev/sda1' value for 'Storage Dev:' field
#    When I select 'Templates' value from display drop down
#    Then I should see 'FileSystem' value in template dropdown
#    And I should see 'Utilization' value in graph def table
#    And I should see 'Usage' value in graph def table
#    And I should see 'Inode Utilization' value in graph def table
#    And I should see 'Inode Usage' value in graph def table
#    And I should see 'disk' name in data source table
#    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
#    And I should see 'idisk' name in data source table
#    And I should see '/bin:/sbin:/usr/bin:/usr/sbin' source in data source table
#    And I should see '90 percent used' name in thresholds table
#    And I should see '90' maxval in thresholds table
#    When I select 'Dependencies' value from display drop down
#    And I click on dependencies button
#    Then I should see 'Devices' dependent in dependencies table

    #########
#    When I select 'Events' value from display drop down
#    And I set '/App' event class and 'TEST' summary in fields





