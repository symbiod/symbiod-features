# frozen_string_literal: true

module Pages
  # this page describes bootcamp page
  class BootcampLanding < BasePage
    link :join_button, id: 'join-via-github'

    # TODO: move to navigation module
    link :home, id: 'home'
    link :bootcamp, id: 'bootcamp'

    def click_home_link
      home
      RootLanding.new(@browser)
    end

    def click_bootcamp_link
      bootcamp
      BootcampLanding.new(@browser)
    end

  end
end
