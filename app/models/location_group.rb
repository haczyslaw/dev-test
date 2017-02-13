class LocationGroup < ActiveRecord::Base
  has_and_belongs_to_many :locations
  belongs_to :country
  belongs_to :panel_provider

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :country_id, presence: true
  validates :panel_provider_id, presence: true
end
