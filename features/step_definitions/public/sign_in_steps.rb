Given('system has staff user') do
  @staff = FactoryBot.create(:user, :staff)
end

When('I sign in as staff') do
  goto(url_for(:idea_sign_in))
  @page = Pages::Idea::SignInPage.new(@browser)
  @page.sign_in_with(@staff.email, '123123')
end


