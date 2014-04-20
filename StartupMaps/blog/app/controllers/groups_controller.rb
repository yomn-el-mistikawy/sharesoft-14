class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
  
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


 # This method creates a group
 # creator_id takes the creator id as an input in the form of an integer
 # name takes the name of the group as an input in the form of a string
 # description takes the description of the group as an input in the form of a string
 # location takes the location of the group as an input in the form of a string
 # private takes the type of the group's privacy as an input in the form of "0" or "1"
 # interest takes the interest of the group as an input in the form of a string
 # Author: Sherouk A. Said

  def create
    group = Group.new
    group.creator_id = params[:id]
    group.name = params[:name] 
    group.description = params[:description] 
    group.location = params[:location]
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

  
  end

  private
    
  def set_group
  end

    .
    
  end
