require 'rails_helper'

RSpec.describe DefaultPrice do
  describe '.generate_prices' do
    subject { DefaultPrice.generate_prices }

    before do
      allow_any_instance_of(ArrayCounterService).to receive(:perform).and_return(500)
      allow_any_instance_of(TagCounterService).to receive(:perform).and_return(500)
      allow_any_instance_of(CharCounterService).to receive(:perform).and_return(500)
    end

    it 'calls proper services' do
      subject

      expect(DefaultPrice.pl).to eq 500
      expect(DefaultPrice.de).to eq 5
      expect(DefaultPrice.ru).to eq 5
    end
  end
end
