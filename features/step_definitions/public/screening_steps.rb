Given('system has test tasks') do
  FactoryBot.create(:test_task, :developer, :active, skill: Models::Skill.first)
end

When('I submit screening form with {string}') do |solution_url|
  @page = Pages::Public::ScreeningPage.new(@browser)
  @page.submit_screening_result(solution_url)
end
