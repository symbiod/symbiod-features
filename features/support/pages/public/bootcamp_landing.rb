# frozen_string_literal: true

module Pages
  module Public
    # this page describes bootcamp page
    class BootcampLanding < BasePage
      include Public::HeaderNavigation

      link :join_button, id: 'join-via-github'

      def click_join_button
        join_button
        ::Pages::Public::GithubPage.new(@browser)
      end
    end
  end
end
