require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get talk" do
    get :talk
    assert_response :success
  end

end
