class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :country_code, null: false
      t.integer :panel_provider_id, null: false

      t.timestamps null: false
    end
  end
end
