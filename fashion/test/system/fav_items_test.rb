require "application_system_test_case"

class FavItemsTest < ApplicationSystemTestCase
  setup do
    @fav_item = fav_items(:one)
  end

  test "visiting the index" do
    visit fav_items_url
    assert_selector "h1", text: "Fav Items"
  end

  test "creating a Fav item" do
    visit fav_items_url
    click_on "New Fav Item"

    fill_in "Category", with: @fav_item.category
    fill_in "Name", with: @fav_item.name
    fill_in "Popularity", with: @fav_item.popularity
    fill_in "Price", with: @fav_item.price
    click_on "Create Fav item"

    assert_text "Fav item was successfully created"
    click_on "Back"
  end

  test "updating a Fav item" do
    visit fav_items_url
    click_on "Edit", match: :first

    fill_in "Category", with: @fav_item.category
    fill_in "Name", with: @fav_item.name
    fill_in "Popularity", with: @fav_item.popularity
    fill_in "Price", with: @fav_item.price
    click_on "Update Fav item"

    assert_text "Fav item was successfully updated"
    click_on "Back"
  end

  test "destroying a Fav item" do
    visit fav_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fav item was successfully destroyed"
  end
end
