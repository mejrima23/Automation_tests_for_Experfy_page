Feature: Expert login to the Experfy Application
  Scenario: Expert login the Application
    Given We are on the Experfy Expert login page
    Then We will type the expert username
    Then We will type the expert password
    Then We will click on Continue
    When We should see: reCAPTCHA Authorization Failed. Please try again later, message