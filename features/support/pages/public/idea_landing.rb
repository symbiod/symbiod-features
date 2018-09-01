# frozen_string_literal: true

module Pages
  module Public
    # this page describes bootcamp page
    class IdeaLanding < BasePage
      include Public::HeaderNavigation

      link :offer_an_idea_button, text: 'Offer an idea'

      def click_join_button
        join_button
        ::Pages::Public::GithubPage.new(@browser)
      end
    end
  end
end
