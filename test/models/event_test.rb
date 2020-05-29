require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = events(:one)
  end

  test 'valid event' do
    assert @event.valid?
  end

  test 'invalid without name' do
    @event.name = nil
    refute @event.valid?
    assert_not_nil @event.errors[:name]
  end

  test '#users' do
    assert_equal 1, @event.users.size
  end
end
