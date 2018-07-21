module Models
  class Role < ActiveRecord::Base
    self.table_name = 'legacy_roles'
    has_many :user_roles
  end
end
