module Pages
  module Dashboard
    class TestTasksPage < BasePage
      include Pages::Dashboard::SidebarNavigation
      text_field :test_task_title_input, id: 'developer_test_task_title'
      link :applied_test_task_link, xpath: '/html/body/div/div/main/div/table/tbody/tr/td[5]/a'
      button :update_test_task_button, value: 'Update Test task'

      def open_first_test_task_profile
        applied_test_task_link
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_update_test_task_button
        update_test_task_button
        Pages::Dashboard::TestTasksPage.new(@browser)
      end
    end
  end
end
