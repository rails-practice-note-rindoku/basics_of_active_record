require "application_system_test_case"

class NoveltiesTest < ApplicationSystemTestCase
  setup do
    @novelty = novelties(:one)
  end

  test "visiting the index" do
    visit novelties_url
    assert_selector "h1", text: "Novelties"
  end

  test "should create novelty" do
    visit novelties_url
    click_on "New novelty"

    fill_in "Book", with: @novelty.book_id
    fill_in "Name", with: @novelty.name
    click_on "Create Novelty"

    assert_text "Novelty was successfully created"
    click_on "Back"
  end

  test "should update Novelty" do
    visit novelty_url(@novelty)
    click_on "Edit this novelty", match: :first

    fill_in "Book", with: @novelty.book_id
    fill_in "Name", with: @novelty.name
    click_on "Update Novelty"

    assert_text "Novelty was successfully updated"
    click_on "Back"
  end

  test "should destroy Novelty" do
    visit novelty_url(@novelty)
    click_on "Destroy this novelty", match: :first

    assert_text "Novelty was successfully destroyed"
  end
end
