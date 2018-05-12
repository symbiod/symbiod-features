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
          page_class: Pages::RootLanding
        },
        bootcamp_landing: {
          path: '/',
          subdomain: 'bootcamp',
          page_class: Pages::BootcampLanding
        }
      }
    end
  end
end