class ActivitiesController < ApplicationController

  # Definition: View activities in desc order.
  # Input: Activities attributes.
  # Output: Activities of startup.
  # Author: Amr Gamal.
  	
  def index
  	@activities = PublicActivity::Activity.order("created_at desc")
  end
end
