Given('system has {string} user') do |role|
  @user = FactoryBot.create(:user, role.to_sym, :active)
end

When('I sign in') do
  goto(url_for(:idea_sign_in))
  @page = Pages::Idea::SignInPage.new(@browser)
  @page.sign_in_with(@user.email, '123123')
end


