When('I open applicants page in dashboard') do
  @page = @page.goto_applicants
end

Then('I can see {string} in table') do |role|
  @applicant = self.instance_variable_get("@#{role}")
  expect(@page.applicant_in_table?(@applicant.email)).to eq true
end

When('I open developer profile') do
  @page = @page.open_first_applied_developer_profile
end

Then('I can see {string} button') do |button_name|
  @page.public_send("#{button_name}_button?")
end

When('I click activation button') do
  @page = @page.click_activation_button
end

When('I click {string} button') do |button_name|
  @page = @page.public_send("click_#{button_name}_button")
end

Then('I see no applied user') do
  expect(@page.applicant_in_table?(@applicant.email)).to eq false
end

And('user has {string} state') do |state|
  # TODO: do not rely on role here, and check the state via UI
  expect(@applicant.roles.last.reload.state).to eq state
end
