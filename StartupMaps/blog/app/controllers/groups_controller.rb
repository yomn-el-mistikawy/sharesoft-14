class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  helper_method :check_group_member

  # Defintion: This method takes the session id 
  # and group id, then checks if the logged in
  # entity is a group member. If it is a group member
  # then it calls get_group_members function to get a list
  # of group members and shows it in list_group_members view,
  # else a message appears stating that the 
  # entity isn't a group member. 
  # Input: entity_id, group_id
  # Output: list of group members
  # Author: Yomn El-Mistikawy

  def list_group_members 
    @startup = Startup.find(session[:entity_id])
    if (GroupsStartup.check_membership(Startup.find(session[:entity_id]), Group.find(params[:group_id])).size != 0)
      @group_members = Group.get_group_members(Group.find(params[:group_id]))
    else
      render text: "You are not a group member" 
    end
  end


  # Defintion: calls method check_membership from groups_startup model to check if a startup is a member.  
  # Input: current_entity, current group.
  # Output: boolean.
  # Author: Maha Salah Eldin.

  def check_group_member
    return GroupsStartup.check_membership(current_entity.id, @group.id).any?
  end
end
