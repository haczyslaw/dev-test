require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:country_code) }
    it { is_expected.to validate_presence_of(:panel_provider_id) }
  end

  describe 'validate uniqueness' do
    let!(:country) { FactoryGirl.create :country }

    it { is_expected.to validate_uniqueness_of(:country_code) }
  end
end
