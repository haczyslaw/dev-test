class PanelProvider < ActiveRecord::Base
  has_many :target_groups
  has_many :location_groups
  has_many :locations, through: :location_groups

  validates :code, presence: true
end
