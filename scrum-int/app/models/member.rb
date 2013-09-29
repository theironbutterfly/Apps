class Member < ActiveRecord::Base
  belongs_to :team
  attr_accessible :email, :name
  validates :name,  :presence => true
  validates :email, :presence => true
end
