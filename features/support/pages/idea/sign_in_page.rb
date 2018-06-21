module Pages
  module Idea
    class SignInPage < BasePage
      text_field :email, id: 'idea_login_email'
      text_field :password, id: 'idea_login_password'
      button :sign_in, value: 'Submit'

      def sign_in_with(email, password)
        self.email = email
        self.password = password
        sign_in
      end
    end
  end
end
