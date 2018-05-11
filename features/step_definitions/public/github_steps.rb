When('sign in to github') do
  @page.email_input = ENV['GITHUB_TEST_EMAIL']
  @page.password_input = ENV['GITHUB_TEST_PASSWORD']
  @page = @page.click_signin_button
end

When('authorized through github') do
  @page = @page.authorize_oauth
end

Then('deauthorize github app') do
  goto('https://github.com/settings/applications')
  @page = @page.deauthorize_app
  @page = @page.confirm_deauthorize_app
end
