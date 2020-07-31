class CreateClassEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :class_events do |t|
      t.decimal :price, :precision => 8, :scale => 2
      t.date :last_day_to_enroll
      t.integer :max_registrations
      t.text :note
      t.datetime :published_at
      t.datetime :unpublished_at
      t.datetime :cancelled_at
      t.datetime :archived_at

      t.timestamps
    end
  end
end
