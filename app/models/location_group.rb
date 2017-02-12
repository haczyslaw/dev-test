class LocationGroup < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :country_id, presence: true
  validates :panel_provider_id, presence: true
end
