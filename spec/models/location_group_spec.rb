require 'rails_helper'

RSpec.describe LocationGroup, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:country_id) }
    it { is_expected.to validate_presence_of(:panel_provider_id) }
  end

  describe 'validate uniqueness' do
    let!(:location) { FactoryGirl.create :location_group }

    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:country) }
    it { is_expected.to have_and_belong_to_many(:locations) }
  end
end
