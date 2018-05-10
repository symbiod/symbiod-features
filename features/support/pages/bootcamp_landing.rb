# frozen_string_literal: true

module Pages
  # this page describes bootcamp page
  # TODO: move this classes to Public namespace
  class BootcampLanding < BasePage
    include Public::HeaderNavigation

    link :join_button, id: 'join-via-github'

    def click_join_button
      join_button
      ::Pages::Public::GithubPage.new(@browser)
    end
  end
end
