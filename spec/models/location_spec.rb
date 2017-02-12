require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:external_id) }
    it { is_expected.to validate_presence_of(:secret_code) }
  end

  describe 'validate uniqueness' do
    let!(:location) { FactoryGirl.create :location }

    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
