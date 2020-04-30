require 'test_helper'

class SpeciallitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speciallity = speciallities(:one)
  end

  test "should get index" do
    get speciallities_url
    assert_response :success
  end

  test "should get new" do
    get new_speciallity_url
    assert_response :success
  end

  test "should create speciallity" do
    assert_difference('Speciallity.count') do
      post speciallities_url, params: { speciallity: { charge: @speciallity.charge, name: @speciallity.name } }
    end

    assert_redirected_to speciallity_url(Speciallity.last)
  end

  test "should show speciallity" do
    get speciallity_url(@speciallity)
    assert_response :success
  end

  test "should get edit" do
    get edit_speciallity_url(@speciallity)
    assert_response :success
  end

  test "should update speciallity" do
    patch speciallity_url(@speciallity), params: { speciallity: { charge: @speciallity.charge, name: @speciallity.name } }
    assert_redirected_to speciallity_url(@speciallity)
  end

  test "should destroy speciallity" do
    assert_difference('Speciallity.count', -1) do
      delete speciallity_url(@speciallity)
    end

    assert_redirected_to speciallities_url
  end
end
