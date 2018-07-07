Given('system has created {string} test task') do |state|
  @test_task = FactoryBot.create(:test_task, state.to_s.to_sym, :developer)
  @role = FactoryBot.create(:role)
end

When('I open test tasks page in dashboard') do
  goto(url_for(:dashboard_test_tasks))
  @page = Pages::Dashboard::TestTasksPage.new(@browser)
end

Then('test task {string} has {string} status') do |title, state|
  expect(@page.test_task_has_status?(title, state)).to eq true
end

When('I click {string} link on Test tasks page') do |link|
  @page = @page.public_send("click_#{link}_link".tr(' ', '_').downcase, @test_task.id)
end

When('I click New Test task link on Test tasks page') do
  @page = @page.click_new_test_task_link
end

When('I open {string} test task profile') do |title|
  @page = @page.open_test_task_profile(title)
end

Then('I can see {string} button on Test task page') do |button_name|
  @page.public_send("#{button_name}_button?".tr(' ', '_').downcase)
end

When('I update title with {string}') do |title|
  @page.test_task_title_input = title
end

When('I update description') do
  @browser.execute_script("simplemde.value(\"#{Faker::VForVendetta.speech}\")")
end

When('I click {string} button on Test task page') do |button_name|
  @page = @page.public_send("click_#{button_name}_button".tr(' ', '_').downcase)
end
