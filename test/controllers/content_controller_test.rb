require 'test_helper'

class ContentControllerTest < ActionDispatch::IntegrationTest
  test "should get get_movies" do
    get content_get_movies_url
    assert_response :success
  end

  test "should get get_seasons" do
    get content_get_seasons_url
    assert_response :success
  end

end
