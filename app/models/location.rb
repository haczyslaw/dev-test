class Location < ActiveRecord::Base
  has_and_belongs_to_many :location_groups

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :external_id, presence: true
  validates :secret_code, presence: true
end
