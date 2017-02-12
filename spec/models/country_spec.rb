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

  describe 'relationships' do
    it { is_expected.to have_many(:country_targets).dependent(:delete_all) }
    it { is_expected.to have_many(:target_groups).conditions(parent_id: nil).through(:country_targets) }
  end
end
