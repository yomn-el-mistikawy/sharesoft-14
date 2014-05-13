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


 # Definition: This method creates a new portfolio with the parameters name, description and launch,
 # the if statement redirects the user to the show method if the object is saved correctly in the
 # database.
 # Input: Portfolio.
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


 # Definition: This method will be called after the edit method when user edits a data and
 # wants to update the changes that was made into the database. When the portfolio is saved
 # it is redirected to the index method where the portfolios are listed if there was an error
 # the user will be redirected again to the edit page.
 # Input: Portfolio_id.
 # Output: Updated portfolio.
 # Author: Mozdan Ahmed.

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


 # Definition: The method deletes a certain portfolio.
 # Input: Void.
 # Output: Void.
 # Author: Mozdan Ahmed.

  def destroy
    @entity_portfolio = EntityPortfolio.find(params[:id])
    @entity_portfolio.destroy
    respond_to do |format|
    format.html { redirect_to entity_portfolios_url }
    format.json { head :no_content }
  end
  end


  # Definition: This method is used to permit the usage of the parameters.
  # Input: Entity_portfolio
  # Output: Entity_portfolio_params.
  # Author: Mozdan Ahmed.
  private
  def entity_portfolio_params
      params.require(:entity_portfolio).permit(:name, :description, :launch)
    end
end
