# frozen_string_literal: true

FactoryBot.define do
  sequence :email do |n|
    Faker::Internet.email
  end

  factory :user, class: OpenStruct do
    Faker::Config.locale = :en
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email
    password Faker::Internet.password(6)
  end
end
