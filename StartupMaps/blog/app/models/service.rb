class Service < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :Entity

	 def self.search_service(search)
    @service= Service.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
    return @service
 
   end 
=======
  belongs_to :Entity

  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]
>>>>>>> 7c10bc19d78f4cb16fcb1d84f904f2d90c8e27d4
end
