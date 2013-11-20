class Scraper
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_hrefs
    all_hrefs = []
    # url = "http://jonl.org/"
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    doc.css('a').each do |link|
      all_hrefs << link.attributes['href'].value
    end
    all_hrefs
  end

  def get_images
    all_images = []
    # url = "http://generalassemb.ly/"
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    doc.css('img').each do |img|
      all_images << img.attributes['src'].value
    end
    all_images
  end

end
