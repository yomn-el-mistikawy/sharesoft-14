class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  
  # Definition: This method loops on table gallery to get all data from it and put it
  # into the variable @galleries.
  # Input: Void.
  # Output: All data from table gallery.
  # Author: Sandra Youssef.
 
  def index
    @galleries = Gallery.all
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def edit
  end


  # Definition: This method aims to create a new gallery.
  # Input: Gallery id.
  # Output: A new painting.
  # Author: Sandra Youssef.

  def create
    @gallery = Gallery.new(gallery_params)
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gallery }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: This method edits the painting and create a message that the gallery was
  # successfully updated.
  # Input: Name.
  # Output: A new painting.
  # Author: Sandra Youssef.

  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: This method deletes the painting.
  # Input: Void.
  # Output: Void.
  # Author: Sandra Youssef.

  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end


  
  # Definition: This method finds in table gallery all data that has id similar to the
  # input.
  # Input: Id.
  # Output: All data from table gallery with similar input.
  # Author: Sandra Youssef.
  private
  def set_gallery
      @gallery = Gallery.find(params[:id])
  end


  # Definition: This method is called by method create to pass the name.
  # Input: Name.
  # Output: Void.
  # Author: Sandra Youssef.

  def gallery_params
    params.require(:gallery).permit(:name)
  end
end