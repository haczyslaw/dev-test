class Country < ActiveRecord::Base
  has_many :country_targets, dependent: :delete_all
  has_many :target_groups, -> { where(parent_id: nil) }, through: :country_targets
  belongs_to :panel_provider

  validates :country_code, presence: true
  validates :country_code, uniqueness: true
  validates :panel_provider_id, presence: true
end
