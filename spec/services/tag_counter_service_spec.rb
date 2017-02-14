require 'rails_helper'

RSpec.describe CharCounterService do
  let(:fake_body) { "<html><body> <p> <a href='#'> a </a> </p> </html></body>" }

  before do
    allow_any_instance_of(TagCounterService).to receive(:body).and_return(fake_body)
    allow_any_instance_of(TagCounterService).to receive(:download_uri).and_return(fake_body)
  end

  describe '#perform' do
    subject { TagCounterService.new(nil).perform }

    it { is_expected.to eq(4) }
  end
end
