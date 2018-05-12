module Pages
  module Dashboard
    class ApplicantsPage < BasePage
      include Pages::Dashboard::SidebarNavigation

      link :applied_developer_link, xpath: '/html/body/div/div/main/div/table/tbody/tr/td[2]/a'
      button :activate_button, value: 'Activate'
      button :reject_button, value: 'Reject'

      def open_first_applied_developer_profile
        applied_developer_link
        Pages::Dashboard::ApplicantsPage.new(@browser)
      end

      def click_activate_button
        activate_button
        Pages::Dashboard::ApplicantsPage.new(@browser)
      end

      def click_reject_button
        reject_button
        Pages::Dashboard::ApplicantsPage.new(@browser)
      end
    end
  end
end
