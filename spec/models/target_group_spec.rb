require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:panel_provider_id) }
    it { is_expected.to validate_presence_of(:external_id) }
    it { is_expected.to validate_presence_of(:secret_code) }
  end

  describe 'validate uniqueness' do
    let!(:location) { FactoryGirl.create :target_group }

    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:children).class_name('TargetGroup').with_foreign_key('parent_id') }
  end
end
