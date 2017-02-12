class CreateCountryTargets < ActiveRecord::Migration
  def change
    create_table :country_targets do |t|
      t.integer :country_id, null: false
      t.integer :target_group_id, null: false

      t.timestamps null: false
      t.index :country_id
      t.index :target_group_id
    end
  end
end
