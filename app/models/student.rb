class Student < ActiveRecord::Base
  belongs_to :project
  has_one :profile
  attr_accessible :name
end
