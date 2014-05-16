class Service < ActiveRecord::Base

  belongs_to :Entity

  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]

  # Definition: This method checks if the name in the search box is like the name
  # inserted in the database. 
  # Input: Search.
  # Output: Service name.
  # Author: Mozdan Ahmed.

  def self.search_service(search)
   @service= Service.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
   return @service
  end 
end
