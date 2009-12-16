require File.dirname(__FILE__) + '/../test_helper'

class IntrosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:intro)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_intro
    assert_difference('Intro.count') do
      post :create, :intro => { }
    end

    assert_redirected_to intro_path(assigns(:intro))
  end

  def test_should_show_intro
    get :show, :id => intro(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => intro(:one).id
    assert_response :success
  end

  def test_should_update_intro
    put :update, :id => intro(:one).id, :intro => { }
    assert_redirected_to intro_path(assigns(:intro))
  end

  def test_should_destroy_intro
    assert_difference('Intro.count', -1) do
      delete :destroy, :id => intro(:one).id
    end

    assert_redirected_to intro_path
  end
end
