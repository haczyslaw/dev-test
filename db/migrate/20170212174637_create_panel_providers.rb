class CreatePanelProviders < ActiveRecord::Migration
  def change
    create_table :panel_providers do |t|
      t.integer :code, null: false

      t.timestamps null: false
    end
  end
end
