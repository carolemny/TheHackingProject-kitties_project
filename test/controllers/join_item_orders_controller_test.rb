require 'test_helper'

class JoinItemOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_item_order = join_item_orders(:one)
  end

  test "should get index" do
    get join_item_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_join_item_order_url
    assert_response :success
  end

  test "should create join_item_order" do
    assert_difference('JoinItemOrder.count') do
      post join_item_orders_url, params: { join_item_order: {  } }
    end

    assert_redirected_to join_item_order_url(JoinItemOrder.last)
  end

  test "should show join_item_order" do
    get join_item_order_url(@join_item_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_item_order_url(@join_item_order)
    assert_response :success
  end

  test "should update join_item_order" do
    patch join_item_order_url(@join_item_order), params: { join_item_order: {  } }
    assert_redirected_to join_item_order_url(@join_item_order)
  end

  test "should destroy join_item_order" do
    assert_difference('JoinItemOrder.count', -1) do
      delete join_item_order_url(@join_item_order)
    end

    assert_redirected_to join_item_orders_url
  end
end
