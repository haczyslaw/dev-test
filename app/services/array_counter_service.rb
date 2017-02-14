class ArrayCounterService < PriceService
  def perform
    @price = 0
    JSON.parse(body)['docs'].each do |item|
      count_big_arrays(item) if item.is_a?(Hash)
    end
    @price
  end

  private

  def count_big_arrays(hash)
    hash.values.each do |item|
      @price += 1 if item.is_a?(Array) && item.length > 10
    end
  end
end
