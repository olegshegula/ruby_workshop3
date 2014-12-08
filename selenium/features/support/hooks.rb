require 'selenium-webdriver'

browser = Selenium::WebDriver.for $BROWSER
browser.manage.window.resize_to(1360, 768)
browser.manage.timeouts.implicit_wait = 30
browser.manage.timeouts.script_timeout = 20

Before do
  @browser = browser
end

After do  |scenario|
  if scenario.failed?
    name = rand(36**8).to_s(36)
    @browser.save_screenshot(File.dirname(__FILE__) +name+'.png')
  end
end

at_exit do
  browser.quit
end