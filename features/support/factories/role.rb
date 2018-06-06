# frozen_string_literal: true

FactoryBot.define do
  factory :role, class: Models::Role do
    name 'developer'

    trait :staff do
      name 'staff'
    end

    trait :developer do
      name 'developer'
    end

    trait :mentor do
      name 'mentor'
    end
  end
end
