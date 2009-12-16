require File.dirname(__FILE__) + '/../test_helper'

class PurchasesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_purchase
    assert_difference('Purchase.count') do
      post :create, :purchase => { }
    end

    assert_redirected_to purchase_path(assigns(:purchase))
  end

  def test_should_show_purchase
    get :show, :id => purchase(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => purchase(:one).id
    assert_response :success
  end

  def test_should_update_purchase
    put :update, :id => purchase(:one).id, :purchase => { }
    assert_redirected_to purchase_path(assigns(:purchase))
  end

  def test_should_destroy_purchase
    assert_difference('Purchase.count', -1) do
      delete :destroy, :id => purchase(:one).id
    end

    assert_redirected_to purchase_path
  end
end
