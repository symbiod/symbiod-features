Given('I have staff role') do
  @current_user = Models::User.find_by(email: ENV['GITHUB_TEST_EMAIL'])
  FactoryBot.create(:user_role, :staff, user: @current_user)
end

When('I open dashboard page') do
  goto(url_for(:dashboard_root))
  @page = Pages::Dashboard::RootPage.new(@browser)
end

Then('I can access all pages at dashboard') do
  expect(@page.has_text?('Dashboard')).to eq true
  expect(@page.has_text?('Applicants')).to eq true
  expect(@page.has_text?('Test Tasks')).to eq true
end

Then('I can not access all pages at dashboard') do
  expect(@page.has_text?('Dashboard')).to eq true
  expect(@page.has_text?('Applicants')).to eq false
  expect(@page.has_text?('Test Tasks')).to eq false
end
