require 'active_record'

module Models
  class TestTask < ActiveRecord::Base
    self.table_name = 'developer_test_tasks'
  end
end
