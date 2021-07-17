Feature: We can filter the list of devices
    and choice device
  Background:
    Given that the user is logged in

  Scenario: Check user can set filter by table device
    When I set fields filter 'qa-ubuntu-11.zenoss.lab', '10.88.120.109', '/Server/SSH/Linux' and click on device
    Then I should see device overview page
