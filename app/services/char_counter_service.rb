class CharCounterService < PriceService
  include ActionView::Helpers::SanitizeHelper

  def perform
    @price = 0
    # maybe strip html tags ?
    @body.gsub!(/<script>[^<]*<\/script>/, '')
    @body = strip_tags(@body)
    @body.each_char { |char| @price += 1 if char == 'a' }
    @price
  end
end
