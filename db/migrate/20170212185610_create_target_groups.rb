class CreateTargetGroups < ActiveRecord::Migration
  def change
    create_table :target_groups do |t|
      t.string :name, null: false
      t.integer :parent_id
      t.integer :panel_provider_id, null: false
      t.string :external_id, null: false
      t.string :secret_code, null: false

      t.timestamps null: false
      t.index :parent_id
    end
  end
end
