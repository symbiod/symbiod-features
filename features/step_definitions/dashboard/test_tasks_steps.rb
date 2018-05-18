Given('system has applied test task') do
  @test_task = FactoryBot.create(:test_task)
end

Then('I can see test task in table') do
  @page = @page.goto_test_tasks
  expect(@page.has_text?(@test_task.title)).to eq true
end

When('I open test task profile') do
  @page = @page.open_first_test_task_profile
end

Then('I can see {string} button on Test task page') do |button_name|
  @page.public_send("#{button_name}_button?".gsub(' ', '_').downcase)
end

When('I update title field test task') do
  @page.test_task_title_input = 'New title test task'
end

When('I click {string} button on Test task page') do |button_name|
  @page = @page.public_send("click_#{button_name}_button".gsub(' ', '_').downcase)
end

Then('I see new test task title') do
  expect(@page.has_text?(@test_task.title)).to eq true
end
