require 'selenium-webdriver'
#require 'rubygems'
#require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("We are on the Experfy login page") do
  driver.navigate.to "https://staging.experfy.com/clients/sign_in"
end

When("We will type the Username") do
  driver.find_element(:id, 'user_email').send_keys 'lee_keebler@wilamson.org'
end

When("Click on Continue button") do
  driver.find_element(:css, '.btn.btn--secondary.btn--block').click
end

Then("We should see 'There is no such email in the system' message") do
  getAlertBody = driver.find_element(:css, '.form-alert__body').text
  expect(getAlertBody).to eq("There is no such email in the system")
end
