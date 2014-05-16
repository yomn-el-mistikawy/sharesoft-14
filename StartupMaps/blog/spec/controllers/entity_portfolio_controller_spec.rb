require 'spec_helper'

describe EntityPortfolioController, "Portfolio create" do
  
  before(:each) do
    @entity_portfolio = mock_model(entity_portfolio, :save => nil)
    EntityPortfolio.stub(:new).and_return @entity_portfolio
  end

  it "should build a new portfolio" do
    EntityPortfolio.should_receive(:new).with("body" => "a quick brown fox")
    entity_portfolio :create, :entity_portfolio => { "body" => "a quick brown fox" }
  end
  
  it "should save the portfolio" do
    @entity_portfolio.should_receive(:save)
    entity_portfolio :create
  end

  context "when the portfolio saves successfully" do
    before(:each) do
      @entity_portfolio.stub(:save).and_return true
    end
    
    it "should set a flash[:notice] portfolio" do
      entity_portfolio :create
      flash[:notice].should == "The portfolio was saved successfully."
    end
    
    it "should redirect to the portfolio index" do
      entity_portfolio :create
      response.should redirect_to(entity_portfolios_path)
    end
  end

  context "when the portfolio fails to save" do
    before(:each) do
      @entity_portfolio.stub(:save).and_return false
    end
    
    it "should assign @entity_portfolio" do
      entity_portfolio :create
      assigns[:entity_portfolio].should == @entity_portfolio
    end

    
    it "should render the new template" do
      entity_portfolio:create
      response.should render_template("new")
    end
    
  end

end
