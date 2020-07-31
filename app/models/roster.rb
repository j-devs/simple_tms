class Roster < ApplicationRecord
  after_create { self.open }

  def open
    update_column("closed_at", nil)
    update_column("open_at", Time.current)
  end

  def close
    update_column("open_at", nil)
    update_column("closed_at", Time.current)
  end

end
