require File.dirname(__FILE__) + '/../test_helper'

class SoapsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:soap)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_soap
    assert_difference('Soap.count') do
      post :create, :soap => { }
    end

    assert_redirected_to soap_path(assigns(:soap))
  end

  def test_should_show_soap
    get :show, :id => soap(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => soap(:one).id
    assert_response :success
  end

  def test_should_update_soap
    put :update, :id => soap(:one).id, :soap => { }
    assert_redirected_to soap_path(assigns(:soap))
  end

  def test_should_destroy_soap
    assert_difference('Soap.count', -1) do
      delete :destroy, :id => soap(:one).id
    end

    assert_redirected_to soap_path
  end
end
