class EntityPortfoliosController < ApplicationController
  before_action :set_entity_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /entity_portfolios
  # GET /entity_portfolios.json
  def index
    @entity_portfolios = EntityPortfolio.all
  end

  # GET /entity_portfolios/1
  # GET /entity_portfolios/1.json
  def show
  end

  # GET /entity_portfolios/new
  def new
    @entity_portfolio = EntityPortfolio.new
  end

  # GET /entity_portfolios/1/edit
  def edit
  end

  # POST /entity_portfolios
  # POST /entity_portfolios.json
  def create
    @entity_portfolio = EntityPortfolio.new(entity_portfolio_params)
     
     respond_to do |format|
      if @entity_portfolio.save
        flash[:notice] = 'Portfolio was successfully created.'
        format.html { redirect_to @entity_portfolio}
        format.json { render action: 'show', status: :created, location: @entity_portfolio }
      else
        format.html { render action: 'new' }
        format.json { render json: @entity_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entity_portfolios/1
  # PATCH/PUT /entity_portfolios/1.json
  def update
    respond_to do |format|
      if @entity_portfolio.update(entity_portfolio_params)
        flash[:notice] = 'Portfolio was successfully updated.'
        format.html { redirect_to @entity_portfolio}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entity_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entity_portfolios/1
  # DELETE /entity_portfolios/1.json
  def destroy
    @entity_portfolio.destroy
    respond_to do |format|
      format.html { redirect_to entity_portfolios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity_portfolio
      @entity_portfolio = EntityPortfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_portfolio_params
      params.require(:entity_portfolio).permit(:name, :description, :launch)
    end
end
