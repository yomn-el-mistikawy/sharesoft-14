class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]

  # GET /paintings
  # GET /paintings.json
  def index
    @paintings = Painting.all
  end

  # GET /paintings/1
  # GET /paintings/1.json
  def show
  end

  # GET /paintings/new
  def new
    @painting = Painting.new( :gallery_id => params[:gallery_id])
  end

  # GET /paintings/1/edit
  def edit
  end

  # POST /paintings
  # POST /paintings.json
  def create
@painting = Painting.new(painting_params) 
if @painting.save
redirect_to @painting.gallery
else
 render :action => 'new'
end 
end


  # PATCH/PUT /paintings/1
   #PATCH/PUT /paintings/1.json
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



  # DELETE /paintings/1
  # DELETE /paintings/1.json
  def destroy
    @painting.destroy
    respond_to do |format|
      format.html { redirect_to paintings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = Painting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painting_params
      params.require(:painting).permit(:gallery_id, :name, :image)
    end
end
