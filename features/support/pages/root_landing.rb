# frozen_string_literal: true

module Pages
  # this page describes root page
  class RootLanding < BasePage

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

    link :developer_button, id: 'join-bootcamp'

    def click_developer_button
      developer_button
      BootcampLanding.new(@browser)
    end
  end
end
