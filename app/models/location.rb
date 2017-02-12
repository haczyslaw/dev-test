class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :external_id, presence: true
  validates :secret_code, presence: true
end
