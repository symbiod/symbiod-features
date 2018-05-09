# frozen_string_literal: true

DatabaseCleaner.strategy = :truncation

Before do |scenario|
  DatabaseCleaner.clean

  @cucumber_host = ENV['CUCUMBER_HOST'] || default_host
  browser_options = dev_env? ? [] : %w[--disable-gpu --headless --no-sandbox]

  @browser = Watir::Browser.new(:chrome, switches: browser_options)
end

After do |scenario|
  make_screenshot(@browser, scenario) if scenario.failed? && !dev_env?
  @browser.close
  DatabaseCleaner.clean
end

def dev_env?
  ENV['CUCUMBER_HOST'] && ENV['CUCUMBER_HOST'] != default_host
end

def default_host
  'http://lvh.me:3000'
end

def make_screenshot(browser, scenario)
  screenshot = "Screenshots/FAILED_#{scenario.name.tr(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
  browser.driver.save_screenshot(screenshot)
  encoded_img = browser.driver.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}", 'image/png')
end
