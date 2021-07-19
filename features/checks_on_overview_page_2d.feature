@overview_page
Feature: We can filter the list of devices
  and choice device
  @qa-ubuntu-12.zenoss.lab_device
  Background:
    Given that the user is logged in

  Scenario: Check user can set filter by table device
  and the correctness of the data on the page overview
    When I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device
    And I should see '10.88.120.110' value for 'Device ID:' field
    And I should see 'root' value for 'Connection Information:' field
#    And I should see '679d:05h:47m:00s' value for 'Uptime:' field          #date field
#    And I should see '2021/07/12 11:28:41' value for 'First Seen:' field   #date field
#    And I should see '2021/07/12 11:29:54' value for 'Last Change:' field  #date field
#    And I should see '2021/07/17 15:18:01' value for 'Model Time:' field   #date field
    And I should see 'Unlocked' value for 'Locking:' field
    And I should see '7.8GB/8.0GB' value for 'Locking:' field
    And I should see 'None' value for 'Systems:' field
    And I should see 'None' value for 'Groups:' field
    And I should see 'None' value for 'Location:' field
    And I should see 'qa-ubuntu-12.zenoss.lab' value for 'Device Name:' field
    And I should see 'Production' value for 'Production State:' field
    And I should see 'Normal' value for 'Priority:' field
    And I should see 'VMware-42 3e df eb 34 ca b1 22-8b fb 0d da b9 ee fc 73' value for 'Serial Number:' field
    And I should see 'Austin' value for 'Collector:' field
    And I should see 'VMware' value for 'Hardware Manufacturer:' field
    And I should see 'VMware Virtual Platform' value for 'Hardware Model:' field
    And I should see 'Ubuntu' value for 'OS Manufacturer:' field
    And I should see 'Ubuntu 12.04.1 LTS' value for 'OS Model:' field
    And I should see comment input for 'Comments:' field
    And I should see two buttons save and cancel on center
    And I should see two buttons save and cancel at the bottom of the page






