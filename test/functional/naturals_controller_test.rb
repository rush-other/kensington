require File.dirname(__FILE__) + '/../test_helper'

class NaturalsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:natural)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_natural
    assert_difference('Natural.count') do
      post :create, :natural => { }
    end

    assert_redirected_to natural_path(assigns(:natural))
  end

  def test_should_show_natural
    get :show, :id => natural(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => natural(:one).id
    assert_response :success
  end

  def test_should_update_natural
    put :update, :id => natural(:one).id, :natural => { }
    assert_redirected_to natural_path(assigns(:natural))
  end

  def test_should_destroy_natural
    assert_difference('Natural.count', -1) do
      delete :destroy, :id => natural(:one).id
    end

    assert_redirected_to natural_path
  end
end
