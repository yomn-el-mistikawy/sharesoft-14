class Service < ActiveRecord::Base
	belongs_to :Entity

	 def self.search_service(search)
    @service= Service.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
    return @service
 
   end 
end
