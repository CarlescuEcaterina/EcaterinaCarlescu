require 'test_helper'

class UsercontactsControllerTest < ActionController::TestCase
  setup do
    @usercontact = usercontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usercontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usercontact" do
    assert_difference('Usercontact.count') do
      post :create, usercontact: { email: @usercontact.email, login: @usercontact.login, name: @usercontact.name }
    end

    assert_redirected_to usercontact_path(assigns(:usercontact))
  end

  test "should show usercontact" do
    get :show, id: @usercontact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usercontact
    assert_response :success
  end

  test "should update usercontact" do
    put :update, id: @usercontact, usercontact: { email: @usercontact.email, login: @usercontact.login, name: @usercontact.name }
    assert_redirected_to usercontact_path(assigns(:usercontact))
  end

  test "should destroy usercontact" do
    assert_difference('Usercontact.count', -1) do
      delete :destroy, id: @usercontact
    end

    assert_redirected_to usercontacts_path
  end
end
