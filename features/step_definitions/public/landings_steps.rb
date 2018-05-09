Given(/^I am on (\w+) landing/) do |page_name|
  page_class = Routes::Mapper.page_class_for(full_landing_name(page_name))
  @page = page_class.new(@browser)
  goto url_for(full_landing_name(page_name))
end

Then('it has text {string}') do |string|
  expect(@page.has_text?(string)).to eq true
end

Then('it has {string} button') do |string|
  expect(@page.public_send("#{string}_button?")).to eq true
end

def full_landing_name(name)
  "#{name}_landing"
end
