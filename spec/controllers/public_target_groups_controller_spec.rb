require 'rails_helper'

RSpec.describe Api::V1::PublicTargetGroupsController, type: :controller do
  let(:panel_provider) { FactoryGirl.create :panel_provider }
  let!(:country) { FactoryGirl.create :country, panel_provider: panel_provider }
  let!(:target_group) { FactoryGirl.create :target_group, panel_provider_id: panel_provider.id }

  describe 'GET show' do
    it 'returns proper body' do
      get :show, country_code: 'pl'

      expect(response.body).to eq([target_group].to_json)
    end
  end
end
