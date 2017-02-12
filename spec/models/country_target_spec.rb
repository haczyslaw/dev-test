require 'rails_helper'

RSpec.describe CountryTarget, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:country) }
    it { is_expected.to validate_presence_of(:target_group) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:country) }
    it { is_expected.to belong_to(:target_group) }
  end
end
