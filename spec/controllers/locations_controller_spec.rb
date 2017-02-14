require 'rails_helper'

RSpec.describe Api::V1::LocationsController, type: :controller do
  let(:panel_provider) { FactoryGirl.create :panel_provider }
  let(:country) { FactoryGirl.create :country, panel_provider: panel_provider }
  let(:location_group) { FactoryGirl.create :location_group, country: country, panel_provider: panel_provider }
  let(:user) { User.new(name: 'test') }
  let!(:location) { FactoryGirl.create :location, location_groups: [location_group] }

  before do
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'GET show' do
    it 'returns proper body' do
      get :show, country_code: 'pl'

      expect(response.body).to eq([location].to_json)
    end
  end
end
