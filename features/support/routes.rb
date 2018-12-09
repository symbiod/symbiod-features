# frozen_string_literal: true

module Routes
  # This class defines a list of possible routes in application
  class Mapper
    def self.path_for(route_name)
      mapping[route_name.to_sym][:path]
    end

    # Use method missing to lookup for specific page attribute
    # by its name
    def self.page_class_for(route_name)
      mapping[route_name.to_sym][:page_class]
    end

    def self.subdomain_for(route_name)
      mapping[route_name.to_sym][:subdomain]
    end

    def self.mapping
      {
        root_landing: {
          path: '/',
          subdomain: nil,
          page_class: Pages::Public::RootLanding
        },
        bootcamp_landing: {
          path: '/bootcamp',
          subdomain: 'www',
          page_class: Pages::Public::BootcampLanding
        },
        dashboard_root: {
          path: '/dashboard',
          subdomain: 'www',
          page_class: Pages::Dashboard::RootPage
        },
        dashboard_applicants: {
          path: '/dashboard/test_task_assignments',
          subdomain: 'www',
          page_class: Pages::Dashboard::ApplicantsPage
        },
        idea_sign_in: {
          path: '/idea/sessions/new',
          subdomain: 'www',
          page_class: Pages::Idea::SignInPage
        },
        dashboard_test_tasks: {
          path: '/dashboard/test_tasks',
          subdomain: 'www',
          page_class: Pages::Dashboard::TestTasksPage
        },
        dashboard_skills: {
          path: '/dashboard/skills',
          subdomain: 'www',
          page_class: Pages::Dashboard::SkillsPage
        },
        dashboard_profile: {
          path: '/dashboard/profile',
          subdomain: 'www',
          page_class: Pages::Dashboard::ProfilePage
        }
      }
    end
  end
end
