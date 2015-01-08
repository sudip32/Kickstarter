class Profile < ActiveRecord::Base
  belongs_to :student
  attr_accessible :name, :profile_hit
end
