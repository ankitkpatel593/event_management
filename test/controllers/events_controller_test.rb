require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  def setup
    sign_in users(:one)
    @event = events(:one)
  end

  def test_show_page
    get :show, params: { id: @event.id }
    assert_response :ok
  end
end
