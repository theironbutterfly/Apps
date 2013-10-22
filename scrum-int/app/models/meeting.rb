class Meeting < ActiveRecord::Base
  belongs_to :team
  attr_accessible :end_time, :name, :start_time
  validates :name, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
end
