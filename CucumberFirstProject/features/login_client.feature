Feature: Client login to the Experfy Application
  Scenario: Client login the Application and then logout
    Given We are on the Experfy Client login page
    When We will type the Client username
    When We will click on Continue button
    When We will type the Client password
    When We will click on Continue button
    Then I should see Experfy homepage
    When I will click on Admin dropdown
    When I will click on Logout
    Then Again, we are on the homepage

