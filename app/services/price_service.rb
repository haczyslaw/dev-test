class PriceService
  attr_reader :body, :price

  def initialize(uri)
    @body = download_uri(uri)
  end

  def perform
    raise 'Not implemented'
  end

  private

  def download_uri(uri)
    Net::HTTP.get(URI(uri))
  end
end
