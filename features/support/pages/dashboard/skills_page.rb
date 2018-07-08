module Pages
  module Dashboard
    class SkillsPage < BasePage
      include Pages::Dashboard::SidebarNavigation

      text_field :skill_title_input, id: 'skill_title'
      button :update_skill_button, value: 'Update'
      button :create_skill_button, value: 'Create'

      def open_skill_profile(title)
        @browser.link(text: title).click
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def click_deactivate_skill_link(id)
        @browser.element(:xpath, "//a[contains(@href, \"skills/#{id}/deactivate\")]").click
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def click_activate_skill_link(id)
        @browser.element(:xpath, "//a[contains(@href, \"skills/#{id}/activate\")]").click
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def click_update_skill_button
        update_skill_button
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def click_create_skill_button
        create_skill_button
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def click_new_skill_link
        @browser.element(:xpath, '//a[contains(@href, "skills/new")]').click
        Pages::Dashboard::SkillsPage.new(@browser)
      end

      def skill_has_status?(title, state)
        @browser.table(class: 'table').strings.find { |row| row[0] == title }[1] == state
      end
    end
  end
end
