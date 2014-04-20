require 'test_helper'

class EntityWorkPortfolioControllerTest < ActionController::TestCase
  test "should get create_portfolio" do
    get :create_portfolio
    assert_response :success
  end

  test "should get edit_portfolio" do
    get :edit_portfolio
    assert_response :success
  end

  test "should get delete_portfolio" do
    get :delete_portfolio
    assert_response :success
  end

end
