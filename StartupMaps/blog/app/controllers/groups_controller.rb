class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  
  end

  
  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
 
  end

  
  # GET /groups/1/edit
  def edit
  end


  # Definition: This method creates a group.
  # Input: creator_id, name, description, location, private, interest.
  # Output: void.
  # Author: Sherouk A. Said.

  def create
    group = Group.new
    group.creator_id = params[:id]
    group.name = params[:name] 
    group.description = params[:description] 
    group.private = params[:private]
    group.interest = params[:interests]
    group.save

  end
  

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
  end


  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  
    
  def set_group
  end

    
    
  end
