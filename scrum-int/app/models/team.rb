class Team < ActiveRecord::Base
  attr_accessible :team_name, :member_id
  has_many :members
end
