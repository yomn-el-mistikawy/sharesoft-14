class EntityPortfolio < ActiveRecord::Base
	validates_uniqueness_of :name, :message => "already exists"
	validates :name, presence: true
	validates :description, presence: true
   
end
