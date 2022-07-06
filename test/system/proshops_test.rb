require "application_system_test_case"

class ProshopsTest < ApplicationSystemTestCase
  setup do
    @proshop = proshops(:one)
  end

  test "visiting the index" do
    visit proshops_url
    assert_selector "h1", text: "Proshops"
  end

  test "should create proshop" do
    visit proshops_url
    click_on "New proshop"

    fill_in "Address", with: @proshop.address
    fill_in "City", with: @proshop.city
    fill_in "Name", with: @proshop.name
    fill_in "Phone", with: @proshop.phone
    fill_in "Website", with: @proshop.website
    click_on "Create Proshop"

    assert_text "Proshop was successfully created"
    click_on "Back"
  end

  test "should update Proshop" do
    visit proshop_url(@proshop)
    click_on "Edit this proshop", match: :first

    fill_in "Address", with: @proshop.address
    fill_in "City", with: @proshop.city
    fill_in "Name", with: @proshop.name
    fill_in "Phone", with: @proshop.phone
    fill_in "Website", with: @proshop.website
    click_on "Update Proshop"

    assert_text "Proshop was successfully updated"
    click_on "Back"
  end

  test "should destroy Proshop" do
    visit proshop_url(@proshop)
    click_on "Destroy this proshop", match: :first

    assert_text "Proshop was successfully destroyed"
  end
end
