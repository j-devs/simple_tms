class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.datetime :open_at
      t.datetime :closed_at

      t.timestamps
    end
  end
end
