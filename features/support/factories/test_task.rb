# frozen_string_literal: true

FactoryBot.define do
  factory :test_task, class: Models::TestTask do
    position { %w[1 2].sample }
    title { Faker::Dune.title }
    description { Faker::VForVendetta.speech }
    skill

    trait :active do
      state 'active'
    end

    trait :developer do
      role_name { Models::Role.find_or_create_by(name: 'developer').name }
    end
  end
end
