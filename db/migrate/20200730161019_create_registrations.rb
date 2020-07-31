class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.datetime :paid_at
      t.decimal :amount_paid, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
