# frozen_string_literal: true

require 'rspec'
require 'watir'
require 'page-object'
require 'data_magic'
require 'factory_bot'
require 'database_cleaner'
require 'pry'
require 'selenium-webdriver'
require 'active_record'

World(PageObject::PageFactory)

require './features/support/pages/base_page'
require './features/support/pages/public/header_navigation'
require './features/support/pages/dashboard/sidebar_navigation'

Dir[
  './features/support/helpers/*.rb',
  './features/support/pages/**/*.rb',
  './features/support/models/*.rb'
].each { |file| require file }

include NavigationHelpers
