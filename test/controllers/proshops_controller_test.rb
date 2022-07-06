require "test_helper"

class ProshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proshop = proshops(:one)
  end

  test "should get index" do
    get proshops_url
    assert_response :success
  end

  test "should get new" do
    get new_proshop_url
    assert_response :success
  end

  test "should create proshop" do
    assert_difference("Proshop.count") do
      post proshops_url, params: { proshop: { address: @proshop.address, city: @proshop.city, name: @proshop.name, phone: @proshop.phone, website: @proshop.website } }
    end

    assert_redirected_to proshop_url(Proshop.last)
  end

  test "should show proshop" do
    get proshop_url(@proshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_proshop_url(@proshop)
    assert_response :success
  end

  test "should update proshop" do
    patch proshop_url(@proshop), params: { proshop: { address: @proshop.address, city: @proshop.city, name: @proshop.name, phone: @proshop.phone, website: @proshop.website } }
    assert_redirected_to proshop_url(@proshop)
  end

  test "should destroy proshop" do
    assert_difference("Proshop.count", -1) do
      delete proshop_url(@proshop)
    end

    assert_redirected_to proshops_url
  end
end
