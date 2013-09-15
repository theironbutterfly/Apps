class Member < ActiveRecord::Base
  belongs_to :team
  attr_accessible :member_id, :member_name, :member_email
end