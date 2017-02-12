class TargetGroup < ActiveRecord::Base
  has_many :children, class_name: 'TargetGroup', foreign_key: 'parent_id'

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :panel_provider_id, presence: true
  validates :external_id, presence: true
  validates :secret_code, presence: true
end
