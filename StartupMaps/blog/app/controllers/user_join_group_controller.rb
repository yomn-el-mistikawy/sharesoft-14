class UserJoinGroupController < ApplicationController
  def index
  	@groups = Group.all
  end


  def show
  end


  def new
  	@user_join_group=UsersJoinGroups.new
  end


  def create
  	@user_join_group=UsersJoinGroups.new	
  end

  def get_group_id
    @group_id = Group.find_by_group_name(entity_params[:id])
  end


end
