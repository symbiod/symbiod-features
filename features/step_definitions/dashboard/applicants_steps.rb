Given('system has applied developer') do
  @applicant = FactoryBot.create(:user, :screening_completed)
end

Then('I can see developer in table') do
  @page = @page.goto_applicants
  # TODO: we have some race condition here
  # for some reasons watir can find the required element
  puts @page.has_text?(@applicant.email)
  #Watir::Wait.until { @browser.td(value: @applicant.email).visible? }
  expect(@page.has_text?(@applicant.email)).to eq true
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
  expect(@page.has_text?(@applicant.email)).to eq false
end

And('user has {string} state') do |state|
  expect(@applicant.reload.state).to eq state
end
