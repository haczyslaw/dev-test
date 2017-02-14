class DefaultPrice
  class << self
    attr_reader :pl, :de, :ru

    def generate_prices
      @pl = ArrayCounterService.new('http://openlibrary.org/search.json?q=the+lord+of+the+rings').perform
      @de = TagCounterService.new('http://time.com').perform / 100
      @ru = CharCounterService.new('http://time.com').perform / 100
    end
  end
end

Thread.new do
  DefaultPrice.generate_prices
  sleep 5
end.join
