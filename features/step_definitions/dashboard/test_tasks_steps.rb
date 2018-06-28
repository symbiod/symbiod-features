Given('system has applied {string} test task') do |state|
  @test_task = FactoryBot.create(:test_task, state.to_s.to_sym, :developer)
  @role = FactoryBot.create(:role)
end

Then('I can see test task in table') do
  goto(url_for(:dashboard_test_tasks))
  @page = Pages::Dashboard::TestTasksPage.new(@browser)
  expect(@page.has_text?(@test_task.title)).to eq true
end

Then('I can see {string} state test task on Test tasks page') do |link|
  @page.has_text?(link)
end

When('I click {string} link on Test tasks page') do |link|
  @page = @page.public_send("click_#{link}_link".tr(' ', '_').downcase, @test_task.id)
end

When('I click create test task button') do
  @page = @page.click_create_test_task_button
end

And('test task has {string} state') do |state|
  Watir::Wait.until { @browser.element(:xpath, "//a[contains(@href,\"test_tasks/#{@test_task.id}\")]").visible? }
  expect(@test_task.reload.state).to eq state
end

When('I open test task profile') do
  @page = @page.open_first_test_task_profile(@test_task.title)
end

Then('I can see {string} button on Test task page') do |button_name|
  @page.public_send("#{button_name}_button?".tr(' ', '_').downcase)
end

When('I update title field test task') do
  @page.test_task_title_input = 'New title test task'
end

When('I update fields test task') do
  @browser.execute_script("document.getElementById('developer_test_task_description').style = ''")
  @page.test_task_title_input = 'New test task'
  @page.test_task_description_textarea = Faker::VForVendetta.speech
end

When('I click {string} button on Test task page') do |button_name|
  @page = @page.public_send("click_#{button_name}_button".tr(' ', '_').downcase)
end

Then('I can see test task new title') do
  expect(@page.has_text?('New title test task')).to eq true
end

Then('I can see new test task') do
  binding.pry
  expect(@page.has_text?('New test task')).to eq true
end
