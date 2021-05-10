require "test_helper"

class FavItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fav_item = fav_items(:one)
  end

  test "should get index" do
    get fav_items_url
    assert_response :success
  end

  test "should get new" do
    get new_fav_item_url
    assert_response :success
  end

  test "should create fav_item" do
    assert_difference('FavItem.count') do
      post fav_items_url, params: { fav_item: { category: @fav_item.category, name: @fav_item.name, popularity: @fav_item.popularity, price: @fav_item.price } }
    end

    assert_redirected_to fav_item_url(FavItem.last)
  end

  test "should show fav_item" do
    get fav_item_url(@fav_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_fav_item_url(@fav_item)
    assert_response :success
  end

  test "should update fav_item" do
    patch fav_item_url(@fav_item), params: { fav_item: { category: @fav_item.category, name: @fav_item.name, popularity: @fav_item.popularity, price: @fav_item.price } }
    assert_redirected_to fav_item_url(@fav_item)
  end

  test "should destroy fav_item" do
    assert_difference('FavItem.count', -1) do
      delete fav_item_url(@fav_item)
    end

    assert_redirected_to fav_items_url
  end
end
