Feature: Expert login to the Experfy Application
  Scenario: Expert login the Application
    Given We are on the Experfy Expert login page
    Then We will type the expert username
    When We will type the expert password
    When We will click on Continue
    Then We should see: reCAPTCHA Authorization Failed. Please try again later, message