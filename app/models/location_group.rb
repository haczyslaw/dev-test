class LocationGroup < ActiveRecord::Base
  has_and_belongs_to_many :locations

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :country_id, presence: true
  validates :panel_provider_id, presence: true

  belongs_to :country
end
