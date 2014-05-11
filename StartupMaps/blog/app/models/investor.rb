class Investor < ActiveRecord::Base
	belongs_to :Entity

 def self.search_investor(search)
    @investor= Investor.find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    return @investor
   end 
end
