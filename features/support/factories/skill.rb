# frozen_string_literal: true

FactoryBot.define do
  factory :skill, class: Models::Skill do
    title { Faker::Dune.title }

    trait :create_title do
      title 'Create Title'
    end

    trait :active do
      state 'active'
    end

    trait :disabled do
      state 'disabled'
    end
  end
end

