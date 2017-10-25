require "selenium-webdriver"
require "test/unit"
 
class GmailLogin < Test::Unit::TestCase
 
  def setup
    Selenium::WebDriver::Chrome.driver_path = File.join(File.absolute_path('', File.dirname("C://Projects/Selenium/Drivers")),"Drivers","chromedriver.exe")
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://google.com')
    @driver.manage.window.maximize    
  end
 
 
  def teardown
    @driver.quit
  end
 
 
  def test_login
    @driver.find_element(:id, "gb_70").click
    sleep 1
    @driver.find_element(:id, "identifierId").send_keys "email@gmail.com"
    @driver.find_element(:id, "identifierNext").click
    sleep 1
    @driver.find_element(:name, "password").send_keys "password"
    @driver.find_element(:id, "passwordNext").click
#    sleep 1
#    @driver.find_element(:id, "gbwa").click
#    sleep 0.3
#    @driver.find_element(:id, "gb23").click
#    sleep 1
#    @driver.find_element(:id, "gbqfq").send_keys "Glassdoor"
#    @driver.find_element(:id, "gbqfb").click
#    sleep 1
#    #assert(
#    puts @driver.find_element(:class, "ts").text#.split[3].to_i.between?(0,100),"Assertion Failed")
    sleep 5
  end
end
