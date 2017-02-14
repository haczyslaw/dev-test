require 'rails_helper'

RSpec.describe CharCounterService do
  let(:big1) { { test: (0..10).to_a, another: [1, 3] } }
  let(:big2) { { label: 'word', long: (1..60).to_a } }
  let(:fake_body) { { docs: [big1, big2, 'test'] }.to_json }

  before do
    allow_any_instance_of(ArrayCounterService).to receive(:body).and_return(fake_body)
    allow_any_instance_of(ArrayCounterService).to receive(:download_uri).and_return(fake_body)
  end

  describe '#perform' do
    subject { ArrayCounterService.new(nil).perform }

    it { is_expected.to eq(2) }
  end
end
