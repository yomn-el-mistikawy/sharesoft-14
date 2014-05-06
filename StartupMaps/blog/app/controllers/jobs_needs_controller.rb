class JobsNeedsController < ApplicationController
  before_action :set_jobs_need, only: [:show, :edit, :update, :destroy]

  # GET /jobs_needs
  # GET /jobs_needs.json
  # Definition: to bring all the entries from the database.
  # Input: void.
  # Output: void .
  # Author: Tharey.

  def  index
    @jobs_needs = EntityNeed.all
  end


  # GET /jobs_needs/1
  # GET /jobs_needs/1.json
  # Definition: show the text labels and fields.
  # Input: void.
  # Output: void.
  # Author: Tharey.

  def  show
  end


  # GET /jobs_needs/new
  # Definition: to make new entries for the text entered in the database.
  # Input: text.
  # Output: saved text.
  # Author: Tharey.

  def  new
    @jobs_need = EntityNeed.new
  end


  # GET /jobs_needs/1/edit
  # Definition: to edit any of the information entered.
  # Input: void.
  # Output: void.
  # Author: Tharey.

  def  edit
  end


  # POST /jobs_needs
  # POST /jobs_needs.json
  # Definition: to create the text fields and labels.
  # Input: job,needs,goals.
  # Output: job,needs,goals saved.
  # Author: Tharey.

  def  create
    @jobs_need = EntityNeed.new(jobs_need_params)

    respond_to do |format|
      if @jobs_need.save
        format.html {redirect_to @jobs_need, notice: 'Jobs need was successfully created.'}
        format.json {render action: 'show', status: :created, location: @jobs_need}
      else
        format.html {render action: 'new'}
        format.json {render json: @jobs_need.errors, status: :unprocessable_entity}
      end
    end
  end


  # PATCH/PUT /jobs_needs/1
  # PATCH/PUT /jobs_needs/1.json
  # Definition: to update the text fields entered and modify.
  # Input: job,needs,goals.
  # Output: modified job,needs,goals.
  # Author: Tharey.

  def  update
    respond_to do |format|
      if @jobs_need.update(jobs_need_params)
        format.html {redirect_to @jobs_need, notice: 'Jobs need was successfully updated.'}
        format.json {head :no_content}
      else
        format.html {render action: 'edit'}
        format.json {render json: @jobs_need.errors, status: :unprocessable_entity}
      end
    end
  end


  # DELETE /jobs_needs/1
  # DELETE /jobs_needs/1.json
  # Definition: to destroy all the records entered in the text.
  # Input: void.
  # Output: void.
  # Author: Tharey.

  def  destroy
    @jobs_need.destroy
    respond_to do |format|
      format.html {redirect_to jobs_needs_url}
      format.json {head :no_content}
    end
  end


  # Use callbacks to share common setup or constraints between actions.
  # Definition: to set the records after recording them.
  # Input: void.
  # Output: void.
  # Author: Tharey.

  private
    def  set_jobs_need
      @jobs_need = EntityNeed.find(params[:id])
    end


 # Never trust parameters from the scary internet, only allow the white list through.
 # Definition: to describe the parameters.
  # Input: job,needs,goals text.
  # Output: job,needs,goals saved.
  # Author: Tharey.

    def  jobs_need_params
      params.require(:jobs_need).permit(:job, :needs, :goals)
    end
end

