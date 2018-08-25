module Pages
  module Dashboard
    class TestTasksPage < BasePage
      include Pages::Dashboard::SidebarNavigation
      text_field :test_task_title_input, id: 'member_test_task_title'
      button :update_test_task_button, value: 'Update Test task'
      button :create_test_task_button, value: 'Create Test task'

      def open_test_task_profile(title)
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

      def click_new_test_task_link
        @browser.element(:xpath, '//a[contains(@href, "test_tasks/new")]').click
        Pages::Dashboard::TestTasksPage.new(@browser)
      end

      def test_task_has_status?(title, state)
        @browser.table(class: 'table').strings.find { |row| row[1] == title }[2] == state
      end
    end
  end
end
