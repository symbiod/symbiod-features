# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: Models::User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    location { Faker::Address.country }
    timezone { Faker::Address.time_zone }
    cv_url { Faker::Internet.url }

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
