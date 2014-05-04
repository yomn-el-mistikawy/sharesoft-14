class StartupsController < ApplicationController
  
  # Definition: When a startup opens its profile, if new badges is completed,
  # then a message appears showing the new badges achieved. A button will be available
  # to give the owner the option to view the unachieved badges. Moreover, all the
  # achieved for all users viewing the profile.
  # Input: startup_id, session_id
  # Output: void
  # Author: Yomn El-Mistikawy

  def show
    session[:entity_id] = 1
    startup = Startup.find(params[:id])
      if session[:entity_id] == startup.entity_id
        @badges_just_achieved_description = StartupsBadges.set_badges(params[:id])
      end	
    @achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1)
  end


  # Definition: This is a pop-up page that shows a list of all the unachieved badges.
  # The button directing to it only appears to the profile owner.
  # Input: startup_id, session_id
  # Output: void
  # Author: Yomn El-Mistikawy	

  def show_unachieved_badges
    @unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:startup_id], 0)
  end  
end
