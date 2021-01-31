require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("We are on the Experfy Expert login page") do
  driver.navigate.to "https://staging.experfy.com/users/sign_in"
end

Then("We will type the expert username") do
  driver.find_element(:id, 'user_email').send_keys 'melodie_bernhard@faykling.org'
end

Then("We will type the expert password") do
  driver.find_element(:id, 'user_password').send_keys 'P@s5word5'
end

Then("We will click on Continue") do
  driver.find_element(:css, '.btn.btn--secondary.btn--block').click
end

Then("We should see: reCAPTCHA Authorization Failed. Please try again later, message") do
  getAlertBody = driver.find_element(:css, '.form-alert__body').text
  expect(getAlertBody).to eq("reCAPTCHA Authorization Failed. Please try again later.")
end