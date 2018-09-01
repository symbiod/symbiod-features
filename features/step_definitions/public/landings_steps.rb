Given(/^I am on (\w+) landing page/) do |page_name|
  page_class = Routes::Mapper.page_class_for(full_landing_name(page_name))
  @page = page_class.new(@browser)
  goto url_for(full_landing_name(page_name))
end

Then('page has {string} text') do |string|
  expect(@page.has_text?(string)).to eq true
end

Then('page has {string} button') do |string|
  expect(@page.public_send("#{underscore(string)}_button?")).to eq true
end

When('click on {string} button') do |button_name|
  @page = @page.send("click_#{button_name}_button")
end

When('click on {string} link') do |link_name|
  @page = @page.send("click_#{link_name}_link")
end

Then('I confirm alert') do
  @browser.alert.ok if @browser.alert.exists?
end

def full_landing_name(name)
  "#{name}_landing"
end

def underscore(string)
  string.underscore.gsub(' ', '_')
end
