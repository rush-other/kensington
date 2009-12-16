require File.dirname(__FILE__) + '/../test_helper'

class SoapmakersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:soapmaker)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_soapmaker
    assert_difference('Soapmaker.count') do
      post :create, :soapmaker => { }
    end

    assert_redirected_to soapmaker_path(assigns(:soapmaker))
  end

  def test_should_show_soapmaker
    get :show, :id => soapmaker(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => soapmaker(:one).id
    assert_response :success
  end

  def test_should_update_soapmaker
    put :update, :id => soapmaker(:one).id, :soapmaker => { }
    assert_redirected_to soapmaker_path(assigns(:soapmaker))
  end

  def test_should_destroy_soapmaker
    assert_difference('Soapmaker.count', -1) do
      delete :destroy, :id => soapmaker(:one).id
    end

    assert_redirected_to soapmaker_path
  end
end
