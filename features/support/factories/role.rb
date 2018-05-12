# frozen_string_literal: true

FactoryBot.define do
  factory :role, class: Models::Role do
    trait :staff do
      name 'stuff'
    end
  end
end
