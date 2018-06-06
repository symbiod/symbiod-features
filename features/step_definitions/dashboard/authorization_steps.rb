Given('I have staff role') do
  @current_user = Models::User.find_by(email: ENV['GITHUB_TEST_EMAIL'])
  FactoryBot.create(:user_role, :staff, user: @current_user)
end

Then('I access dashboard') do
  goto(url_for(:dashboard_root))
  @page = Pages::Dashboard::RootPage.new(@browser)
  expect(@page.has_text?('Dashboard')).to eq true
  expect(@page.has_text?('Applicants')).to eq true
end
