Given('system has created {string} skill') do |state|
  @skill = FactoryBot.create(:skill, :create_title, state.to_s.to_sym)
end

When('I open skills page in dashboard') do
  goto(url_for(:dashboard_skills))
  @page = Pages::Dashboard::SkillsPage.new(@browser)
end

Then('skill {string} has {string} status') do |title, state|
  expect(@page.skill_has_status?(title, state)).to eq true
end

When('I click {string} link on skills page') do |link|
  @page = @page.public_send("click_#{link}_link".tr(' ', '_').downcase, @skill.id)
end

When('I click New skill link on skills page') do
  @page = @page.click_new_skill_link
end

When('I open {string} skill profile') do |title|
  @page = @page.open_skill_profile(title)
end

Then('I can see {string} button on skill page') do |button_name|
  @page.public_send("#{button_name}_button?".tr(' ', '_').downcase)
end

When('I update title with {string} on skill page') do |title|
  @page.skill_title_input = title
end

When('I click {string} button on skill page') do |button_name|
  @page = @page.public_send("click_#{button_name}_button".tr(' ', '_').downcase)
end
