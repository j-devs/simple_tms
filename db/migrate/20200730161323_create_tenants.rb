class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :tenants, :slug
  end
end
