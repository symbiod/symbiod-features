# frozen_string_literal: true

FactoryBot.define do
  factory :user_role, class: Models::UserRole do
    user_id { Models::User.last.id }

    trait :staff do
      role_id { Models::Role.where(name: 'staff').last.id }
    end
  end
end
