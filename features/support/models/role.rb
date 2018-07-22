module Models
  class Role < ActiveRecord::Base
    belongs_to :user
  end
end
