require 'rails_helper'

RSpec.describe Api::V1::TargetGroupsController, type: :controller do
  let(:panel_provider) { FactoryGirl.create :panel_provider }
  let(:user) { User.new(name: 'test') }
  let!(:country) { FactoryGirl.create :country, panel_provider: panel_provider }
  let!(:target_group) { FactoryGirl.create :target_group, panel_provider_id: panel_provider.id }

  before do
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end
 
  describe 'GET show' do
    it 'returns proper body' do
      get :show, country_code: 'pl'

      expect(response.body).to eq([target_group].to_json)
    end
  end
end
