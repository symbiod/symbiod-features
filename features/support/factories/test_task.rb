# frozen_string_literal: true

FactoryBot.define do
  factory :test_task, class: Models::TestTask do
    title { Faker::Dune.title }
    description { Faker::VForVendetta.speech }
  end
end
