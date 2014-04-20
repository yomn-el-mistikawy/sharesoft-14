class EntityWorkPortfolioController < ApplicationController
  
  def new 
  end

  def create_portfolio
  	port = EntityWorkPortfolio.new
  	
  	port.name = params[:name]
  	port.launch = params[:launch]
  	port.entity_id = params[:entity_id]
  	port.description = params[:description]
  	

  	if(port.save)
  		redirect_to :action => 'list'
  	else
  		redirect_to :action => 'new'
	end
  end

  def edit_portfolio 	
  end
	
  def update_portfolio
  	@one = EntityWorkPortfolio.find (params[:id])
    @one.destroy
	  port = EntityWorkPortfolio.new
    port.id = params[:id]
    port.name = params[:name]
    port.launch = params[:launch]
    port.entity_id = params[:entity_id]
    port.description = params[:description]
    if(port.save)
      redirect_to :action => 'list'
    else
      redirect_to :action => 'edit_portfolio'
	end

  end

  def list
  	@lis = EntityWorkPortfolio.find(:all)
  end

  def delete
        @one = EntityWorkPortfolio.find (params[:id])
    @one.destroy
    redirect_to :action => 'list'
  end

  def delete_portfolio


  end
end
