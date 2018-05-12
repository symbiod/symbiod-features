# frozen_string_literal: true

FactoryBot.define do
  factory :test_task_result, class: Models::TestTaskResult do
    link 'some answer'
  end
end
