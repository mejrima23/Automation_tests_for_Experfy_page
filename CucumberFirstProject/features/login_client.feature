Feature: Client login to the Experfy Application
  Scenario: Client login the Application and then logout
    Given We are on the Experfy Client login page
    Then We will type the Client username
    Then We will click on Continue button
    When We will type the Client password
    When We will click on Continue button
    When I should see Experfy homepage
    Then I will click on Admin dropdown
    Then I will click on Logout