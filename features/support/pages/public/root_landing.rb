# frozen_string_literal: true

module Pages
  module Public
    # this page describes root page
    class RootLanding < BasePage
      include Public::HeaderNavigation

      link :member_button, id: 'join-bootcamp'

      def click_member_button
        member_button
        BootcampLanding.new(@browser)
      end
    end
  end
end
