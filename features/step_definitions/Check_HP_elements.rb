require 'cucumber'
require 'selenium-webdriver'
##############################
# browsers = chrome, firefox
# Globals
URL = "http://www.fidor.com"


#######################
# Home Page Elements
homepage_check = 'section.margintop-medium > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > span:nth-child(1)' #css
accept_cookie = '.ok' #css
fidor_logo = '.navbar-brand > img:nth-child(1)' #css
company_tab = 'nav-story' #id
platform_tab = 'nav-platform' #id
solutions_tab = 'nav-solutions' #id
work_tab = 'nav-work' #id
news_tab = 'nav-news' #id
partner_tab = 'nav-partners' #id
developer_tab = 'nav-developer' #id
joinus_tab = 'nav-join-us' #id
contact_tab = 'nav-contact' #id
page_arrow1 = '.arrowswhite' #css
page_arrow2 = 'div.wx-widget:nth-child(7) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1) > div:nth-child(1)' #css
getstarted_btn = 'div.wx-containerwidget:nth-child(4) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(1) > div:nth-child(1) > p:nth-child(5) > a:nth-child(1)' #css
story1_img = 'div.wx-widget:nth-child(6) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > section:nth-child(1) > div:nth-child(1) > div:nth-child(1) > p:nth-child(1) > a:nth-child(1) > img:nth-child(1)' #css
story2_img = 'div.wx-widget:nth-child(6) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(1) > div:nth-child(1) > p:nth-child(1) > a:nth-child(1) > img:nth-child(1)' #css
story3_img = 'div.wx-widget:nth-child(6) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > section:nth-child(1) > div:nth-child(1) > div:nth-child(1) > p:nth-child(1) > a:nth-child(1) > img:nth-child(1)' #css
discover_fidor_btn = 'section.margin-medium:nth-child(1) > div:nth-child(1) > div:nth-child(1) > p:nth-child(5) > a:nth-child(1)' #css
discover_service_btn = 'section.padding-topbottom-medium:nth-child(3) > div:nth-child(1) > div:nth-child(1) > p:nth-child(4) > a:nth-child(1)' #css
#######
#Steps

Given(/^a user go to fidor\.com$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to(URL)
  @driver.manage.window.maximize
end

Then(/^Check all home page main elements$/) do
  @driver.find_element(:css, homepage_check).displayed?
  @driver.find_element(:css, accept_cookie).displayed?
  @driver.find_element(:css, fidor_logo).displayed?
  @driver.find_element(:id, company_tab).displayed?
  @driver.find_element(:id, platform_tab).displayed?
  @driver.find_element(:id, solutions_tab).displayed?
  @driver.find_element(:id, work_tab).displayed?
  @driver.find_element(:id, news_tab).displayed?
  @driver.find_element(:id, partner_tab).displayed?
  @driver.find_element(:id, developer_tab).displayed?
  @driver.find_element(:id, joinus_tab).displayed?
  @driver.find_element(:id, contact_tab).displayed?
  @driver.find_element(:css, page_arrow1).displayed?
  @driver.find_element(:css, page_arrow2).displayed?
  @driver.find_element(:css, getstarted_btn).displayed?
  @driver.find_element(:css, story1_img).displayed?
  @driver.find_element(:css, story2_img).displayed?
  @driver.find_element(:css, story3_img).displayed?
  @driver.find_element(:css, discover_fidor_btn).displayed?
  @driver.find_element(:css, discover_service_btn).displayed?
  @driver.close
end