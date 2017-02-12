class Country < ActiveRecord::Base
  validates :country_code, presence: true
  validates :country_code, uniqueness: true
  validates :panel_provider_id, presence: true
end
