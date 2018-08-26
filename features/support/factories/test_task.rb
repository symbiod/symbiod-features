# frozen_string_literal: true

FactoryBot.define do
  factory :test_task, class: Models::TestTask do
    position { %w[1 2].sample }
    title { 'Create Title' }
    description { Faker::VForVendetta.speech }
    skill

    trait :active do
      state 'active'
    end

    trait :disabled do
      state 'disabled'
    end

    trait :member do
      role_name 'member'
    end
  end
end
