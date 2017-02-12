require 'rails_helper'

RSpec.describe PanelProvider, type: :model do
  describe 'validate presence' do
    it { is_expected.to validate_presence_of(:code) }
  end
end
