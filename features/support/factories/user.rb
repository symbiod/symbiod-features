# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: Models::User do
    email { Faker::Internet.email }

    trait :screening_completed do
      state 'screening_completed'

      after(:create) do |u|
        result = FactoryBot.create(:test_task_result)
        FactoryBot.create(:test_task_assignment,
                          test_task_id: Models::TestTask.last.id,
                          test_task_result_id: result.id,
                          developer_id: u.id
                         )
      end
    end
  end
end
