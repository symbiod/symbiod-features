# frozen_string_literal: true

module Pages
  # this page describes root page
  class RootLanding < BasePage
    include Public::HeaderNavigation

    link :developer_button, id: 'join-bootcamp'

    def click_developer_button
      developer_button
      BootcampLanding.new(@browser)
    end
  end
end
