# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: Models::User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    location { Faker::Address.country }
    timezone { Faker::Address.time_zone }
    cv_url { Faker::Internet.url }
    crypted_password '$2a$10$LFq3avQu0j3DLEn2DokWQendnri2DOUbBSz/yO42YQGScVjMBD0A2'
    salt 'Gjss7xddU4PZ71-2S_p1'

    trait :screening_completed do
      state 'screening_completed'

      after(:create) do |u|
        result = FactoryBot.create(:test_task_result)
        FactoryBot.create(:test_task_assignment,
                          test_task_id: FactoryBot.create(:test_task).id,
                          test_task_result_id: result.id,
                          developer_id: u.id
                         )
      end
    end

    trait :staff do
      after(:create) do |u|
        FactoryBot.create(:user_role, :staff, user: u)
      end
    end
  end
end
