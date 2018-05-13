# frozen_string_literal: true

# module contain methods for navigation on pages
module NavigationHelpers
  def goto(url)
    @browser.goto(url)
  end

  def url_for(page_name)
    path = Routes::Mapper.path_for(page_name)
    subdomain = Routes::Mapper.subdomain_for(page_name)
    subdomain = subdomain + "." if subdomain
    domain = @cucumber_host
      .gsub(/^http:\/\//, '') # remove http:// from url
      .gsub(/\/\w+/, '') # remove path and params
      .gsub('www.', '') # remove www

    "http://#{subdomain}#{domain}#{path}"
  end

  def page_for(page_name)
    Routes::Mapper.page_class_for(page_name).new(@browser)
  end
end
