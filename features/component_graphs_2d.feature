@graphs_component
Feature: We see graphs on component grephs component page

  Background:
    Given that the user is logged in
    Given I set fields filter 'qa-ubuntu-12.zenoss.lab', '10.88.120.110', '/Server/SSH/Linux' and click on device

  Scenario: Check user can see graphs name and metric data that cannot be N/A
    When I click component graphs
    When I on component 'File System' and graphs 'Usage'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /dev'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/lock'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/shm'
    And I should see name graph 'Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /boot'
    And I refresh page so that metric data appears
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'File System' and graphs 'Inode Utilization'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /dev'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/lock'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/shm'
    And I should see name graph 'Inode Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /boot'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'File System' and graphs 'Inode Usage'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /dev'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/lock'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/shm'
    And I should see name graph 'Inode Usage - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /boot'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'File System' and graphs 'Utilization'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /dev'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/lock'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /run/shm'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /boot'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Physical Volume' and graphs 'Utilization'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - /dev/sda5'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Volume Group' and graphs 'Utilization'
    And I should see name graph 'Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - qa-ubuntu-12'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Processor' and graphs 'CPU Utilization'
    And I should see name graph 'CPU Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - 0'
    And I should see name graph 'CPU Utilization - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - 1'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Interface' and graphs 'Data Throughput'
    And I should see name graph 'Data Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - lo'
    And I should see name graph 'Data Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Interface' and graphs 'Error Rate'
    And I should see name graph 'Error Rate - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - lo'
    And I should see name graph 'Error Rate - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see metric data
    And metric data dont have 'N/A' value
    When I on component 'Interface' and graphs 'Packet Throughput'
    And I should see name graph 'Packet Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - lo'
    And I should see name graph 'Packet Throughput - /Server/SSH/Linux - qa-ubuntu-12.zenoss.lab - eth0'
    And I should see metric data
    And metric data dont have 'N/A' value
