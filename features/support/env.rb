# frozen_string_literal: true

require 'rspec'
require 'watir'
require 'page-object'
require 'data_magic'
require 'factory_bot'
require 'database_cleaner'
require 'pry'
require 'selenium-webdriver'

World(PageObject::PageFactory)

require './features/support/pages/public'
require './features/support/pages/public/header_navigation'
Dir['./features/support/helpers/*.rb'].each { |file| require file }
require './features/support/models/user'

include NavigationHelpers
