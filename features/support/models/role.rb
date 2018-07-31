module Models
  class Role < ActiveRecord::Base
    belongs_to :user
  end
end

module Roles
  class Developer < Models::Role; end;
  class Mentor < Models::Role; end;
  class Author < Models::Role; end;
  class Staff < Models::Role; end;
end
