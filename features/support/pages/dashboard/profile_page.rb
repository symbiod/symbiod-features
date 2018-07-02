module Pages
  module Dashboard
    class ProfilePage < BasePage
      include Pages::Dashboard::SidebarNavigation

      button :update_button, value: 'Update'

      def click_edit_link
        @browser.link(text: 'Edit').click
        Pages::Dashboard::ProfilePage.new(@browser)
      end

     def profile_location_input(value)
        @browser.input(id: 'user_location').to_subtype.set(value)
      end

      def profile_timezone_input(value)
        @browser.select(id: 'user_timezone').select_value(value)
      end

      def click_update_button
        update_button
        Pages::Dashboard::ProfilePage.new(@browser)
      end
    end
  end
end
