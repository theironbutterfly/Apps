class Team < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :email
  validates :name,  :presence => true
  validates :email, :presence => true
  has_many :members
end