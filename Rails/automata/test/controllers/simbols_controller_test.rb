require 'test_helper'

class SimbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simbol = simbols(:one)
  end

  test "should get index" do
    get simbols_url
    assert_response :success
  end

  test "should get new" do
    get new_simbol_url
    assert_response :success
  end

  test "should create simbol" do
    assert_difference('Simbol.count') do
      post simbols_url, params: { simbol: { detail: @simbol.detail, name: @simbol.name, picture: @simbol.picture } }
    end

    assert_redirected_to simbol_url(Simbol.last)
  end

  test "should show simbol" do
    get simbol_url(@simbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_simbol_url(@simbol)
    assert_response :success
  end

  test "should update simbol" do
    patch simbol_url(@simbol), params: { simbol: { detail: @simbol.detail, name: @simbol.name, picture: @simbol.picture } }
    assert_redirected_to simbol_url(@simbol)
  end

  test "should destroy simbol" do
    assert_difference('Simbol.count', -1) do
      delete simbol_url(@simbol)
    end

    assert_redirected_to simbols_url
  end
end
