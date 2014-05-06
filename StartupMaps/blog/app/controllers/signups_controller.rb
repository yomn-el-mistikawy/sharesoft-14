class SignupsController < ApplicationController

  def new
    @signup = Signup.new
  end

  def show
    @signup = Signup.find(params[:id])
  end

   def create
    @signup = Signup.new(signup_params)

    respond_to do |format|
      if @signup.save
        format.html { redirect_to @signup, notice: 'Longitute and Latitude successfully added.' }
        format.json { render action: 'show', status: :created, location: @signup }
      else
        format.html { render action: 'new' }
        format.json { render json: @signup.errors, status: :unprocessable_entity }
      end
    end
 @gmapsoptions = {
     "map_options" => {"center_latitude" => 27, 
                       "center_longitude" => 30,
                       "detect_location" => false,
                       "center_on_user" => false,
                       "auto_adjust" => false,
                       "auto_zoom" => true,
                       "zoom" => 8 }
                 }
        @signup.update_attribute(:lat,);         
  end

  def signup_params
      params.require(:signup).permit(:lat, :lng)
    end
end
