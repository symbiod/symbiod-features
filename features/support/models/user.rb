module Models
  class User < ActiveRecord::Base
    has_many :roles
  end
end
