# frozen_string_literal: true

FactoryBot.define do
  factory :skill, class: Models::Skill do
    title { Faker::Dune.title }
  end
end

