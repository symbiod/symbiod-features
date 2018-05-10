module Pages
  module Public
    module HeaderNavigation
      include PageObject

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
end
