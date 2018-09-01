When('sign in to github as {string}') do |account_kind|
  email, password = github_credentials_for(account_kind)
  @page.login = email
  @page.password = password
  @page = @page.click_signin_button
end

When('authorized through github') do
  @page = @page.authorize_oauth
end

Then('deauthorize github app') do
  goto('https://github.com/settings/applications')
  @page = Pages::Public::GithubPage.new(@browser)
  @page = @page.deauthorize_app
  @page = @page.confirm_deauthorize_app
end

def github_credentials_for(account_kind)
  if account_kind == 'public-email'
    [ENV['GITHUB_TEST_EMAIL'], ENV['GITHUB_TEST_PASSWORD']]
  else
    [ENV['GITHUB_NON_PUBLIC_EMAIL'], ENV['GITHUB_NON_PUBLIC_PASSWORD']]
  end
end
