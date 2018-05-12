Given('I have staff role') do
  FactoryBot.create(:role, :staff)
  FactoryBot.create(:user_role, :staff)
end

Then('I access dashboard') do
  goto(url_for(:dashboard_root))
  @page = Pages::Dashboard::RootPage.new(@browser)
  expect(@page.has_text?('Dashboard')).to eq true
  expect(@page.has_text?('Applicants')).to eq true
end
