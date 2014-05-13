class Investor < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :Entity

 def self.search_investor(search)
    @investor= Investor.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
    return @investor
   end 
=======
  belongs_to :Entity

  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]
>>>>>>> 7c10bc19d78f4cb16fcb1d84f904f2d90c8e27d4
end
