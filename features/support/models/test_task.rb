module Models
  class TestTask < ActiveRecord::Base
    self.table_name = 'member_test_tasks'
    belongs_to :skill, class_name: 'Models::Skill'
  end
end
