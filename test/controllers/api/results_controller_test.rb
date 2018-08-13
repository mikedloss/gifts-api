require 'test_helper'

class API::ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_results_show_url
    assert_response :success
  end

  test "should get post" do
    get api_results_post_url
    assert_response :success
  end

  test "should get patch" do
    get api_results_patch_url
    assert_response :success
  end

end
