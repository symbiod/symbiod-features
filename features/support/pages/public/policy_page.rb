module Pages
  module Public
    class PolicyPage < BasePage
      checkbox :accept_policy, id: 'user_accept_policy'
      button :submit_policy_agreement, value: 'Submit'

      def submit_accepted_policy
        check_accept_policy
        submit_policy_agreement
        Pages::Public::ProfilePage.new(@browser)
      end
    end
  end
end
