require "application_system_test_case"

class SeaFishesTest < ApplicationSystemTestCase
  setup do
    @sea_fish = sea_fishes(:one)
  end

  test "visiting the index" do
    visit sea_fishes_url
    assert_selector "h1", text: "Sea fish"
  end

  test "should create sea fish" do
    visit sea_fishes_url
    click_on "New sea fish"

    fill_in "Charac", with: @sea_fish.charac
    fill_in "Color", with: @sea_fish.color
    fill_in "Habit", with: @sea_fish.habit
    fill_in "Name", with: @sea_fish.name
    fill_in "Place", with: @sea_fish.place
    fill_in "Size", with: @sea_fish.size
    click_on "Create Sea fish"

    assert_text "Sea fish was successfully created"
    click_on "Back"
  end

  test "should update Sea fish" do
    visit sea_fish_url(@sea_fish)
    click_on "Edit this sea fish", match: :first

    fill_in "Charac", with: @sea_fish.charac
    fill_in "Color", with: @sea_fish.color
    fill_in "Habit", with: @sea_fish.habit
    fill_in "Name", with: @sea_fish.name
    fill_in "Place", with: @sea_fish.place
    fill_in "Size", with: @sea_fish.size
    click_on "Update Sea fish"

    assert_text "Sea fish was successfully updated"
    click_on "Back"
  end

  test "should destroy Sea fish" do
    visit sea_fish_url(@sea_fish)
    click_on "Destroy this sea fish", match: :first

    assert_text "Sea fish was successfully destroyed"
  end
end
