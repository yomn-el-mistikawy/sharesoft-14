class Investor < ActiveRecord::Base
belongs_to :Entity

  # Definition: This method checks if the name in the search box is like the name
  # inserted in the database. 
  # Input: Search.
  # Output: Investor name.
  # Author: Mozdan Ahmed.


  def self.search_investor(search)
   @investor= Investor.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
   return @investor
  end 

end
