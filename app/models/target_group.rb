class TargetGroup < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :panel_provider_id, presence: true
  validates :external_id, presence: true
  validates :secret_code, presence: true
end
