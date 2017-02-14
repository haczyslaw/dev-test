class TagCounterService < PriceService
  def perform
    doc = Nokogiri::HTML(body)
    @price = doc.xpath('//*').size
  end
end
