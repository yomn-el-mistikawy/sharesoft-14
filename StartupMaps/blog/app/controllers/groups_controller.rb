*class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  helper_method :check_group_member

  # this method is just added for scenario reviewing purposes.
  def index
      session[:entity_ID] = 1
      @groups =  Group.all
      #@groups = @groups.paginate(:page => params[:page], :per_page => 5) 
  end

  # this method is just added for scenario reviewing purposes.
  def show
      @group = Group.find(params[:id])
  end


  # Defintion: Calls method check_membership from groups_startup model to check if a startup is a member.  
  # Input: Current_entity, current group.
  # Output: Boolean.
  # Author: Maha Salah Eldin.

  def check_group_member
    return GroupsStartup.check_membership(current_entity.id, @group.id).any?
  end
end
