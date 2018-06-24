module Pages
  module Dashboard
    class TestTasksPage < BasePage
      include Pages::Dashboard::SidebarNavigation
      text_field :test_task_title_input, id: 'developer_test_task_title'
      link :deactivate_test_task_link, xpath: '/html/body/div/div/main/div/table/tbody/tr[2]/td[3]/a'
      link :activate_test_task_link, xpath: '/html/body/div/div/main/div/table/tbody/tr[2]/td[3]/a'
      button :update_test_task_button, value: 'Update Test task'
      button :active_button, value: 'active'

      def open_first_test_task_profile(title)
        @browser.link(text: title).click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_deactivate_test_task_link
        @browser.link(url: "/test_tasks/1/deactivate").click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_activate_test_task_link
        activate_test_task_link
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_update_test_task_button
        update_test_task_button
        Pages::Dashboard::TestTasksPage.new(@browser)
      end
    end
  end
end
