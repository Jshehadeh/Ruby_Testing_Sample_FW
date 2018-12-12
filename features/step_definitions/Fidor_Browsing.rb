# require 'watir'
require 'cucumber'
require 'selenium-webdriver'
require 'date'
###############
# browsers = chrome, firefox
# Globals
URL = "http://www.fidor.com"


#######################
#Elements
homepage_check = 'section.margintop-medium > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > span:nth-child(1)'
accept_cookie = '.ok'
fidor_logo = '.navbar-brand > img:nth-child(1)'
company_tab = 'nav-story'



###########
# Steps
Given(/^a user go to fidor$/) do
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to(URL)
  @driver.manage.window.maximize
end

When(/^the user should be in fidor home page$/) do
  @driver.find_element(:css, homepage_check).displayed?
  @driver.find_element(:css, accept_cookie).click
  @driver.save_screenshot('test.png')
  @driver.find_element(:css, fidor_logo).displayed?
  @driver.find_element(:css, fidor_logo).click
  @driver.find_element(:css, homepage_check).displayed?
  @driver.find_element(:id, company_tab).displayed?
  @driver.find_element(:id, company_tab).click
  @driver.save_screenshot('end.png')
end




