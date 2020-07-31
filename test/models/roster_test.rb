require 'test_helper'

class RosterTest < ActiveSupport::TestCase

  def setup
    @roster = Roster.create
  end

  test "should be open by default" do
    assert_not_nil @roster.open_at, "open_at attribute not set"
  end

  test "can open" do
    @roster.open
    assert_not_nil @roster.open_at
    assert_nil @roster.closed_at
  end

  test "can close" do
    @roster.close
    assert_not_nil @roster.closed_at
    assert_nil @roster.open_at
  end

end
