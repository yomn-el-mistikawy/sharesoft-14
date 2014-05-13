require 'test_helper'

class EntityPortfoliosControllerTest < ActionController::TestCase
  setup do
    @entity_portfolio = entity_portfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity_portfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity_portfolio" do
    assert_difference('EntityPortfolio.count') do
      post :create, entity_portfolio: { description: @entity_portfolio.description, launch: @entity_portfolio.launch, name: @entity_portfolio.name }
    end

    assert_redirected_to entity_portfolio_path(assigns(:entity_portfolio))
  end

  test "should show entity_portfolio" do
    get :show, id: @entity_portfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity_portfolio
    assert_response :success
  end

  test "should update entity_portfolio" do
    patch :update, id: @entity_portfolio, entity_portfolio: { description: @entity_portfolio.description, launch: @entity_portfolio.launch, name: @entity_portfolio.name }
    assert_redirected_to entity_portfolio_path(assigns(:entity_portfolio))
  end

  test "should destroy entity_portfolio" do
    assert_difference('EntityPortfolio.count', -1) do
      delete :destroy, id: @entity_portfolio
    end

    assert_redirected_to entity_portfolios_path
  end
end
