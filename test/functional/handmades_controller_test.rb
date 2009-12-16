require File.dirname(__FILE__) + '/../test_helper'

class HandmadesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:handmades)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_handmade
    assert_difference('Handmade.count') do
      post :create, :handmade => { }
    end

    assert_redirected_to handmade_path(assigns(:handmade))
  end

  def test_should_show_handmade
    get :show, :id => handmades(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => handmades(:one).id
    assert_response :success
  end

  def test_should_update_handmade
    put :update, :id => handmades(:one).id, :handmade => { }
    assert_redirected_to handmade_path(assigns(:handmade))
  end

  def test_should_destroy_handmade
    assert_difference('Handmade.count', -1) do
      delete :destroy, :id => handmades(:one).id
    end

    assert_redirected_to handmades_path
  end
end
