class Member < ActiveRecord::Base
  belongs_to :team
  attr_accessible :email, :name
end
