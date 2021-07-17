Feature: We can filter the list of devices
  and choice device
  Background:
    Given that the user is logged in

  Scenario: Check user can set filter by table device
    When I set '/cz0/zport/dmd/Devices/Server/SSH/Linux/devices/10.88.120.110/devicedetail#deviceDetailNav:device_overview' url and click on device
    Then I should see device overview page
