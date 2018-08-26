# frozen_string_literal: true

FactoryBot.define do
  factory :test_task_assignment, class: Models::TestTaskAssignment do
    test_task_id 1
    test_task_result_id 1
    member_id 1
  end
end
