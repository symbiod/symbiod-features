# frozen_string_literal: true

FactoryBot.define do
  factory :role, class: Models::Role do
    user

    trait :staff do
      type 'Roles::Staff'
    end

    trait :developer do
      type 'Roles::Developer'
    end

    trait :mentor do
      type 'Roles::Mentor'
    end
  end
end
