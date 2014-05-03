class StartupsController < ApplicationController
  # Definition: When a startup opens its profile, if new badges is completed,
  # then a message appears showing the new badges achieved. A button will be available
  # to give the owner the option to view the unachieved badges. Moreover, all the
  # achieved for all users viewing the profile.
  # Input: startup_id, session_id
  # Output: void
  # Author: Yomn El-Mistikawy

  def show
    startup = Startup.find(params[:id])
      if session[:entity_id] == startup.entity_id
        @badges_just_achieved_description = StartupsBadges.set_badges(params[:id])
      end	
    @achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1)
  end	
end
