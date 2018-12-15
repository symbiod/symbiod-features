When('sign in to github as {string}') do |account_kind|
  @page = @page.sign_in(account_kind)
end

When('authorized through github') do
  @page = @page.authorize_oauth
end

Then('deauthorize github app as {string}') do |account_kind|
  @page = Pages::Public::GithubPage.new(@browser)
  @page = @page.deauthorize_app(account_kind)
end
