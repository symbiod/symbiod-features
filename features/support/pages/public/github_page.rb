module Pages
  module Public
    class GithubPage < BasePage
      text_field :email_input, id: 'login_field'
      text_field :password_input, id: 'password'
      text_field :confirm_username_deauth, id: 'revoke-all-settings-oauth'
      button :signin_button, value: 'Sign in'
      button :authorize_oauth_button, id: 'js-oauth-authorize-btn'
      button :confirm_deauthorize_app_button, text: 'I understand, revoke access for everything'

      def sign_in(account_kind)
        email, password = github_credentials_for(account_kind)
        self.email_input = email
        self.password_input = password
        click_signin_button
      end

      def authorize_oauth
        authorize_oauth_button
        Pages::Public::ProfilePage.new(@browser)
      end

      def deauthorize_app(account_kind)
        goto('https://github.com/settings/applications')
        @browser.summary(text: 'Revoke all', class: 'btn btn-sm btn-danger').click
        Pages::Public::GithubPage.new(@browser)
        confirm_deauthorize_app(account_kind)
      end

      private

      def confirm_deauthorize_app(account_kind)
        email, _ = github_credentials_for(account_kind)
        username = "hthm#{email.split('@').first}"

        self.confirm_username_deauth = username
        confirm_deauthorize_app_button
        Pages::Public::GithubPage.new(@browser)
      end

      def click_signin_button
        signin_button
        GithubPage.new(@browser)
      end

      def github_credentials_for(account_kind)
        if account_kind == 'public-email'
          [ENV['GITHUB_TEST_EMAIL'], ENV['GITHUB_TEST_PASSWORD']]
        else
          [ENV['GITHUB_NON_PUBLIC_EMAIL'], ENV['GITHUB_NON_PUBLIC_PASSWORD']]
        end
      end
    end
  end
end
