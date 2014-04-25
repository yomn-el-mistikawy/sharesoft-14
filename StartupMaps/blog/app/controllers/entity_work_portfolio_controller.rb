class EntityWorkPortfolioController < ApplicationController
  

 #  Defintion: Gets all the portfolios and list them.
 #  Input: Portfolio.
 #  Output: All portfolios.
 #  Author: Mozdan Ahmed.

  def list
      @portfolio = EntityWorkPortfolio.find(:all)
  end


 #  Defintion: Show a certain portfolio from the listed ones.
 #  Input: Portfolio id.
 #  Output: The chosen portfolio.
 #  Author: Mozdan Ahmed.

  def show
      @portfolio = EntityWorkPortfolio.find(params[:id])


  end


 #  Defintion: Call portfolio object to be creayed in the created_portfolio.
 #  Input:  Void.
 #  Output: Void.
 #  Author: Mozdan Ahmed.

  def new
      @portfolio = EntityWorkPortfolio.new

    
  end


 #  Defintion: Create a new portfolio with the parameters name, description and launch.
 #  And the If statement redirects the user to the list method if the object saves correctly
 #  indatabase. If it doesn't save, the user is sent back to the new method.
 #  Input: portfolio.
 #  Output: A new portfolio.
 #  Author: Mozdan Ahmed.

  def create_portfolio
    
      portfolio = EntityWorkPortfolio.new(params[:portfolio].permit(:name, :description, :launch))
    if(portfolio.save)
      redirect_to :action => 'list'
    else
      redirect_to :action => 'new'
  end
  end


 #  Defintion: This method retrieve a portfolio based on its id and display it the page.
 #  Input:  Void.
 #  Output: Void.
 #  Author: Mozdan Ahmed.

  def edit_portfolio
      @portfolio = EntityWorkPortfolio.find(params[:id])
     
  end


 #  Defintion: This method will be called after the edit method when user edits a data and
 #  wants to update the changes that was made into the database. When the portfolio is saved
 #  it is redirecyed to the list method where the portfolios are listed if there was an error
 #  the user will be redirected again to the edit page. 
 #  Input:  Portfolio id.
 #  Output: Updated portfolio.
 #  Author: Mozdan Ahmed.

  def update_portfolio
    @portfolio = EntityWorkPortfolio.find(params[:id])
    if @portfolio.update_attributes(params[:portfolio].permit(:name, :description, :launch))
         redirect_to :action => 'list', :id => @portfolio
    else
         render :action => 'edit_portfolio'
    end
  end

 
 #  Defintion: The method deletes a certain portfolio.
 #  Input:  Void.
 #  Output: Void.
 #  Author: Mozdan Ahmed.

  def delete_portfolio
      EntityWorkPortfolio.find(params[:id]).destroy
      redirect_to :action => 'list'
  end
 end


