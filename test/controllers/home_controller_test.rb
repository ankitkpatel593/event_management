require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  def setup
    sign_in users(:one)
  end

  def test_index_page
    get :index
    assert_response :ok
  end
end
