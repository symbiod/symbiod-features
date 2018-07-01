Given('system has an {string} {string} user') do |state, role|
  self.instance_variable_set("@#{role}", FactoryBot.create(:user, role.to_sym, state.to_sym))
end

When('I sign in as {string}') do |role|
  goto(url_for(:idea_sign_in))
  @page = Pages::Idea::SignInPage.new(@browser)
  @page.sign_in_with(self.instance_variable_get("@#{role}").email, '123123')
end


