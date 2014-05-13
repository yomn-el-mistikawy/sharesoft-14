class EntityPortfoliosController < ApplicationController


  # Definition: This method lists all the porfolios.
  # Input: Void.
  # Output: All portfolio.
  # Author: Mozdan Ahmed.

  def index
    @entity_portfolio = EntityPortfolio.all
  end

  # Definition: This method shows the portfolio that clicked from the listed portfolio.
  # Input: EntityPortfolio_id.
  # Output: Chosen portfolio.
  # Author: Mozdan Ahmed.

  def show
    @entity_portfolio = EntityPortfolio.find(params[:id])
  end

  # Definition: Call portfolio object to be created in the create method.
  # Input: Void.
  # Output: Void.
  # Author: Mozdan Ahmed.

  def new
    @entity_portfolio = EntityPortfolio.new
  end


 # Definition: This method retrieves a portfolio based on its id and displays it in the page.
 # Input: Void.
 # Output: Void.
 # Author: Mozdan Ahmed.

  def edit
    @entity_portfolio = EntityPortfolio.find(params[:id])
  end


 # Definition: This methode creates a new portfolio with the parameters name, description and launch,
 # the If statement redirects the user to the show method if the object is saved correctly
 # in the database. If it doesn't save, the user is sent back to the new method.
 # Input: portfolio.
 # Output: A new portfolio.
 # Author: Mozdan Ahmed.

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


  def update
    @entity_portfolio = EntityPortfolio.find(params[:id])
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


  def destroy
    @entity_portfolio = EntityPortfolio.find(params[:id])
    @entity_portfolio.destroy
    respond_to do |format|
      format.html { redirect_to entity_portfolios_url }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_portfolio_params
      params.require(:entity_portfolio).permit(:name, :description, :launch)
    end
end
