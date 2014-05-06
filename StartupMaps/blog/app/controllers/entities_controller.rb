class EntitiesController < ApplicationController
  

  # Definition: Knows the user ID from the params and finds its last work status.
  # Input: Group ID.
  # Output: Changes to online or offline.
  # Author: Ola Enaba.
  
  def show
  end

  def change_company_status
      @startup = Startup.find(params[:startup_id])
      Entity.change(@startup)
  end

end

