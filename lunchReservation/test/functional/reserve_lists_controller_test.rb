require 'test_helper'

class ReserveListsControllerTest < ActionController::TestCase
  setup do
    @reserve_list = reserve_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserve_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserve_list" do
    assert_difference('ReserveList.count') do
      post :create, reserve_list: { id: @reserve_list.id, lunch: @reserve_list.lunch, name: @reserve_list.name, note: @reserve_list.note, price: @reserve_list.price }
    end

    assert_redirected_to reserve_list_path(assigns(:reserve_list))
  end

  test "should show reserve_list" do
    get :show, id: @reserve_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserve_list
    assert_response :success
  end

  test "should update reserve_list" do
    put :update, id: @reserve_list, reserve_list: { id: @reserve_list.id, lunch: @reserve_list.lunch, name: @reserve_list.name, note: @reserve_list.note, price: @reserve_list.price }
    assert_redirected_to reserve_list_path(assigns(:reserve_list))
  end

  test "should destroy reserve_list" do
    assert_difference('ReserveList.count', -1) do
      delete :destroy, id: @reserve_list
    end

    assert_redirected_to reserve_lists_path
  end
end
