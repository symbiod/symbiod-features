When('I open profile in dashboard') do
  goto(url_for(:dashboard_profile))
  @page = Pages::Dashboard::ProfilePage.new(@browser)
end

Then('I can see my email on page profile {string} user') do |role|
  expect(@page.has_text?(self.instance_variable_get("@#{role}").email)).to eq true
end

When('I click {string} link on profile') do |link|
  @page = @page.public_send("click_#{link}_link".downcase)
end

Then('I can see {string} button on edit profile') do |button_name|
  @page.button(value: button_name).when_present.visible?
  expect(@page.public_send("#{button_name}_button?".downcase)).to eq true
end

When('I update {string} input with {string}') do |name_input, value|
  @page.public_send("profile_#{name_input}_input", value)
end

And('I click {string} button on edit profile') do |button_name|
  @page = @page.public_send("click_#{button_name}_button".downcase)
end

Then('I can see {string} on profile page') do |value|
  expect(@page.has_text?(value)).to eq true
end
