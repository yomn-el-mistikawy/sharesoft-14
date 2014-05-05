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
  end

  def signup_params
      params.require(:signup).permit(:lat, :lng)
    end
end
