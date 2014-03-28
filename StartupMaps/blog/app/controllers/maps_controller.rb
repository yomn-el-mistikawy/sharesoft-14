class MapsController < ApplicationController

#this stores all the tuples whose joint_Ventures'
# attribute is not an empty string, meaning that 
# it has an entry as a joint_Venture. All those
# are stored an instance variable called merged.

#author: Heba
#Input: table startup
#Output: table merged
def showMerged
	@merged = Startup.where(:joint_Ventures != "")
end



end