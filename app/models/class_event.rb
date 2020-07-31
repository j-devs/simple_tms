class ClassEvent < ApplicationRecord

  after_create { self.unpublish }



# Checking state
  def is_cancelled?
    self.cancelled_at == nil ? false : true
  end

  def is_archived?
    self.archived_at == nil ? false : true
  end

  def is_published?
    self.published_at == nil ? false : true
  end

# Changing state
  def cancel
    update_column("cancelled_at", Time.current)
  end

  def archive
    self.unpublish
    update_column("archived_at", Time.current)
  end

  def publish
    update_column("unpublished_at", nil)
    update_column("published_at", Time.current)
  end

  def unpublish
    update_column("published_at", nil)
    update_column("unpublished_at", Time.current)
  end



end
