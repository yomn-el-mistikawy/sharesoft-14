class Subscription < ActiveRecord::Base
	has_and_belongs_to_many :subscriber, :class_name => "entity" 
	has_and_belongs_to_many :subscribee, :class_name => "entity"


   #Defination: Shows all the profiles.
   #Input: Void.
   #Output: Void.
   #Authored by: Ziad Abdelkader.

 def show	
   	@profile= Profiles.all
 end


end


