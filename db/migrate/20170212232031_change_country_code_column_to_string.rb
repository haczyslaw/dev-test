class ChangeCountryCodeColumnToString < ActiveRecord::Migration
  def change
    change_column :countries, :country_code, :string, null: false
    change_column :panel_providers, :code, :string, null: false
  end
end
