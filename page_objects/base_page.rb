require 'singleton'
require 'selenium-webdriver'


class BasePage
  include Singleton

  attr_accessor :driver

  def initialize
    Selenium::WebDriver::Chrome.driver_path="./chromedriver"
    @driver = Selenium::WebDriver.for :chrome
  end

  def navigate_to_google
    @driver.get("https://www.google.com/")
    puts 'https://www.google.com/'
    true
  end

  def navigate_to_amazon
    @driver.get("https://www.amazon.com/")
    puts 'https://www.amazon.com/'
    true
  end

  def navigate_to_slickdeals
    @driver.get("https://slickdeals.net/")
    puts 'https://slickdeals.net/'
    false
  end

  def navigate_to_frys
    @driver.get("https://www.frys.com/")
    puts 'https://www.frys.com/'
    true
  end

  def navigate_to_bing
    @driver.get("https://www.bing.com/")
    puts 'https://www.bing.com/'
    true
  end
end