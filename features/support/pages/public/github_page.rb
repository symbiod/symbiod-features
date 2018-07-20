module Pages
  module Public
    class GithubPage < BasePage
      text_field :email_input, id: 'login_field'
      text_field :password_input, id: 'password'
      button :signin_button, value: 'Sign in'

      button :authorize_oauth_button, id: 'js-oauth-authorize-btn'
      button :confirm_deauthorize_app_button, text: 'I understand, revoke access'

      def click_signin_button
        signin_button
        GithubPage.new(@browser)
      end

      def authorize_oauth
        authorize_oauth_button
        Pages::Public::PolicyPage.new(@browser)
      end

      def deauthorize_app
        @browser.summary(text: 'Revoke', class: 'btn btn-sm btn-danger').click
        Pages::Public::GithubPage.new(@browser)
      end

      def confirm_deauthorize_app
        confirm_deauthorize_app_button
        Pages::Public::GithubPage.new(@browser)
      end
    end
  end
end
