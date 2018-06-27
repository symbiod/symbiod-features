module Pages
  module Dashboard
    class TestTasksPage < BasePage
      include Pages::Dashboard::SidebarNavigation
      text_field :test_task_title_input, id: 'developer_test_task_title'
      textarea :test_task_description_textarea, id: 'developer_test_task_description'
      button :update_test_task_button, value: 'Update Test task'
      button :create_test_task_button, value: 'Create Test task'

      def open_first_test_task_profile(title)
        @browser.link(text: title).click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_deactivate_test_task_link(id)
        @browser.element(:xpath, "//a[contains(@href, \"test_tasks/#{id}/deactivate\")]").click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_activate_test_task_link(id)
        @browser.element(:xpath, "//a[contains(@href, \"test_tasks/#{id}/activate\")]").click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_update_test_task_button
        update_test_task_button
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_create_test_task_button
        create_test_task_button
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def click_new_test_task_link(id)
        @browser.element(:xpath, '//a[contains(@href, "test_tasks/new")]').click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end
    end
  end
end
