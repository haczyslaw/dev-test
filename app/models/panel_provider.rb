class PanelProvider < ActiveRecord::Base
  has_many :target_groups
  has_many :location_groups
  has_many :locations, through: :location_groups

  validates :code, presence: true

  def default_price
    DefaultPrice.try code.to_sym
  end
end
