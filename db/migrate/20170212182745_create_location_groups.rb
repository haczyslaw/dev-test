class CreateLocationGroups < ActiveRecord::Migration
  def change
    create_table :location_groups do |t|
      t.string :name, null: false
      t.integer :country_id, null: false
      t.integer :panel_provider_id, null: false

      t.timestamps null: false
      t.index :country_id
    end
  end
end
