class EntitiesController < ApplicationController

 # Definition: When a startup opens its profile, if new badges is completed,
 # then a message appears showing the new badges achieved. A button will be available
 # to give the owner the option to view the unachieved badges. Moreover, all the
 # achieved badges with highest level are shown for to users viewing the profile.
 # Input: startup_id, session_id
 # Output: void
 # Author: Yomn El-Mistikawy

 def show
  session[:entity_id] = 2
  entity = Entity.find(params[:id])
  if entity.type == "Startup" && session[:entity_id] == entity.id
   @recently_achieved_badges_description = StartupsBadges.set_badges(params[:id])
   @all_achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1, 1, 1)
  end 
  @achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1, 0, 1)
 end


 # Definition: This is a pop-up page that shows a list of all the unachieved badges.
 # The button directing to it only appears to the profile owner.
 # Input: startup_id, session_id
 # Output: void
 # Author: Yomn El-Mistikawy 

 def show_unachieved_badges
  @unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1)
 end  
end

