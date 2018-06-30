# frozen_string_literal: true

FactoryBot.define do
  factory :user_role, class: Models::UserRole do
    user

    trait :staff do
      role { create(:role, :staff) }
    end

    trait :developer do
      role { create(:role, :developer) }
    end
  end
end
