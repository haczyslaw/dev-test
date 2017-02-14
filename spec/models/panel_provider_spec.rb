require 'rails_helper'

RSpec.describe PanelProvider, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:code) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:target_groups) }
    it { is_expected.to have_many(:location_groups) }
    it { is_expected.to have_many(:locations).through(:location_groups) }
  end

  describe '#default_price' do
    subject { FactoryGirl.build(:panel_provider, code: 'pl').default_price }

    it 'calls DefaultPrice with country_code' do
      expect(DefaultPrice).to receive(:pl)

      subject
    end
  end
end
