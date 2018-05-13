class Screenshoter
  attr_reader :browser, :name

  def initialize(browser, name=nil)
    @browser = browser
    @name    = name
  end

  def call
    browser.driver.save_screenshot(screenshot_file_name)
    encoded_img = browser.driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}", 'image/png')
  end

  def screenshot_file_name
    "#{screenshots_dir}/FAILED_#{Time.now.to_s}_#{name.tr(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
  end

  def screenshots_dir
    'artifacts/screenshots'
  end
end
