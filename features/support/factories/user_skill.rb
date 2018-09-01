# frozen_string_literal: true

FactoryBot.define do
  factory :user_skill, class: Models::UserSkill do
    user
    skill
    primary { true }
  end
end
