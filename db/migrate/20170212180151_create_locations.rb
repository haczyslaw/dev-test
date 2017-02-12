class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :external_id, null: false
      t.string :secret_code, null: false

      t.timestamps null: false
    end
  end
end
