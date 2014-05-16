  class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]


  # Definition: This method loops on table painting and put all data in the variable
  # @paintings.
  # Input: Void.
  # Output: All data from painting.
  # Author: Sandra Youssef.

  def index
    @paintings = Painting.all
  end

  def show
  end


  # Definition: This method aims to make a new painting.
  # Input: Gallery id.
  # Output: A new painting.
  # Author: Sandra Youssef.

  def new
    @painting = Painting.new(:gallery_id => params[:gallery_id])
  end

  def edit
  end


  # Definition: This method aims to create a new painting and after to click 
  # on the button create painting, it generate a message that the Painting was 
  # successfully created.
  # Input: Gallery id, name.
  # Output: A new painting.
  # Author: Sandra Youssef.

  def create
    @painting = Painting.new(painting_params)
    respond_to do |format|
      if @painting.save
        format.html { redirect_to @painting, notice: 'Painting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @painting }
      else
        format.html { render action: 'new' }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: This method aims to edit the painting and after to click on the
  # button update painting, it generate a message that the painting was successfully updated.
  # Input: Gallery id, name, image.
  # Output: Void.
  # Author: Sandra Youssef.

  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to @painting, notice: 'Painting was successfully updated.' }
        format.json { head :no_content }
      else
       format.html { render action: 'edit' }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: This method deletes the painting.
  # Input: Void.
  # Output: Void.
  # Author: Sandra Youssef.

  def destroy
    @painting.destroy
    respond_to do |format|
      format.html { redirect_to paintings_url }
      format.json { head :no_content }
    end
  end


  # Definition: This method loops on table painting and find retreive all data that is
  # similar to the input id.
  # Input: Id.
  # Output: All data from table painting.
  # Author: Sandra Youssef.

  private
  def set_painting
    @painting = Painting.find(params[:id])
  end


  # Definition: This method is called by method create that has the aim to create a
  # new painting. 
  # Input: Gallery id, name, image.
  # Output: Void.
  # Author: Sandra Youssef.

  def painting_params
    params.require(:painting).permit(:gallery_id, :name, :image)
  end
  end