module Pages
  module Dashboard
    module SidebarNavigation
      include PageObject

      link :applicants_link, text: 'Applicants'

      def goto_applicants
        applicants_link
        Pages::Dashboard::ApplicantsPage.new(@browser)
      end
    end
  end
end
