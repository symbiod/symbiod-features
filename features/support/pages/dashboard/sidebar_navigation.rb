module Pages
  module Dashboard
    module SidebarNavigation
      include PageObject

      link :applicants_link, text: /Applicants/
      link :test_tasks_link, text: 'Test Tasks'

      def goto_applicants
        applicants_link
        Pages::Dashboard::ApplicantsPage.new(@browser)
      end

      def goto_test_tasks
        test_tasks_link
        Pages::Dashboard::TestTasksPage.new(@browser)
      end
    end
  end
end
