require "application_system_test_case"

class JoinItemOrdersTest < ApplicationSystemTestCase
  setup do
    @join_item_order = join_item_orders(:one)
  end

  test "visiting the index" do
    visit join_item_orders_url
    assert_selector "h1", text: "Join Item Orders"
  end

  test "creating a Join item order" do
    visit join_item_orders_url
    click_on "New Join Item Order"

    click_on "Create Join item order"

    assert_text "Join item order was successfully created"
    click_on "Back"
  end

  test "updating a Join item order" do
    visit join_item_orders_url
    click_on "Edit", match: :first

    click_on "Update Join item order"

    assert_text "Join item order was successfully updated"
    click_on "Back"
  end

  test "destroying a Join item order" do
    visit join_item_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join item order was successfully destroyed"
  end
end
