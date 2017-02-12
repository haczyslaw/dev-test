class CountryTarget < ActiveRecord::Base
  belongs_to :country
  belongs_to :target_group

  # validates that corresponding raw exists
  validates :country, presence: true
  validates :target_group, presence: true
end
