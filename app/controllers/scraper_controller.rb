class ScraperController < ApplicationController

  def index
  end

  def links
    scraper = Scraper.new()
    scraper.get_hrefs
  end

  def pictures
  end

end
