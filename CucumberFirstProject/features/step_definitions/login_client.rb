require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("We are on the Experfy Client login page") do
  driver.navigate.to "https://staging.experfy.com/clients/sign_in"
end

Then("We will type the Client username") do
  driver.find_element(:id, 'user_email').send_keys 'lee_keebler@williamson.org'
end

Then("We will click on Continue button") do
  driver.find_element(:css, '.btn.btn--secondary.btn--block').click
end

Then("We will type the Client password") do
  driver.find_element(:id, 'user_password').send_keys 'P@s5word3'
  sleep 10
end

Then("I should see Experfy homepage") do
  urlNya = driver.current_url
  expect(urlNya).to include("cloud")
  sleep (5)
  getTextForm = driver.find_element(:css, '.home__header__title').text
  expect(getTextForm).to eq("Let's Build the Future of Work Together")
end

Then("I will click on Admin dropdown") do
  driver.find_element(:css, '.profile-name').click
end

Then("I will click on Logout") do
  driver.find_element(:xpath, './/a[contains(text(), "Logout")]').click
end

