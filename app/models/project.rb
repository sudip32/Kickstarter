class Project < ActiveRecord::Base
  	attr_accessible :abstract, :budget, :description, :title, :status
  	has_many :students
  	validates :title, :presence => true
  	validates :budget, numericality: {only_integer: true}
  	scope :ongoing, where(status: 'ongoing')
  	def self.expensive
  		self.where('budget > ?', 100)
  	end

end
	 