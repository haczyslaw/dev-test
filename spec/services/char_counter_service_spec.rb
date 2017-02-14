require 'rails_helper'

RSpec.describe CharCounterService do
  let(:fake_body) { "<script> alert('test'); </script><b>Some text with a a a</b>" }

  before do
    allow_any_instance_of(CharCounterService).to receive(:body).and_return(fake_body)
    allow_any_instance_of(CharCounterService).to receive(:download_uri).and_return(fake_body)
  end

  describe '#perform' do
    subject { CharCounterService.new(nil).perform }

    it { is_expected.to eq(3) }
  end
end
