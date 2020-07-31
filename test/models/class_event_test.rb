require 'test_helper'

class ClassEventTest < ActiveSupport::TestCase

  def setup
    @class_event = ClassEvent.create
  end

  test "should be unpublished by default" do
    assert_not_nil @class_event.unpublished_at
  end

  test "can publish" do
    @class_event.publish
    assert_not_nil @class_event.published_at
    assert_nil @class_event.unpublished_at
  end

  test "can unpublish" do
    @class_event.unpublish
    assert_not_nil @class_event.unpublished_at
    assert_nil @class_event.published_at
  end

  test "can check if published" do
    @class_event.publish
    assert @class_event.is_published?
  end

  test "can check if unpublished" do
    @class_event.unpublish
    assert_not @class_event.is_published?
  end

  test "can archive" do
    @class_event.archive
    assert_not_nil @class_event.archived_at
    assert_not_nil @class_event.unpublished_at
    assert_nil @class_event.published_at
  end

  test "can check if archived" do
    @class_event.archive
    assert @class_event.is_archived?
  end

  test "can cancel" do
    @class_event.cancel
    assert_not_nil @class_event.cancelled_at, "Did not set cancelled_at attribute"
  end

end
