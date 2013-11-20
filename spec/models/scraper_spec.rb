require 'spec_helper'

describe Scraper do
 it "takes a url as a parameter when you initialize a new Scraper" do
  scraper = Scraper.new("http://jonl.org/")
  expect(scraper.url).to eq("http://jonl.org/")
 end

  it "uses nokogiri to return an array of all the links on a page with get_hrefs" do
    scraper = Scraper.new("http://jonl.org/")
    array = ["Hi/Happier/Happier.html",
            "Hi/Engineer/Engineer.html",
            "Hi/Composer/Composer.html",
            "Hi/Entrepreneur/Entrepreneur.html",
            "http://blog.jonl.org",
            "attachments/Jonathan_Leung's_Resume.pdf",
            "http://facebook.com/friendjonathanleung",
            "http://twitter.com/jonathanjleung"]
    expect(scraper.get_hrefs).to eq(array)
  end

    # ["Hi/Happier/Happier.html",
    # "Hi/Engineer/Engineer.html",
    # "Hi/Composer/Composer.html",
    # "Hi/Entrepreneur/Entrepreneur.html",
    # "http://blog.jonl.org",
    # "attachments/Jonathan_Leung's_Resume.pdf",
    # "http://facebook.com/friendjonathanleung",
    # "http://twitter.com/jonathanjleung"]


  it "uses nokogiri to return an array of all the images on a page with get_images" do
    scraper = Scraper.new("http://generalassemb.ly/")
    expect(scraper.get_images.length).to eq(20)
  end

#   [
#     [ 0] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/ga-lockup-91b6faf530625d6c62c44ae5fae9aa46.png",
#     [ 1] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/menu-cf606bc973fd75fb4edbb82f9015bd46.svg",
#     [ 2] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/student_stories/circles/larry-f177289f8a52daf70706b155911a654e.jpg",
#     [ 3] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/student_stories/circles/whitney-81b0046223e603484bc7e9337d71049e.jpg",
#     [ 4] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/student_stories/circles/benji-169871d5357b18227f521f85cfdf5990.jpg",
#     [ 5] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/papercraft/courses-papercraft-7219ed3fd1d4ba25a274edc5d047223a.jpg",
#     [ 6] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/papercraft/cw-papercraft-a73a55c446e071cfbbccb39b5da778b9.jpg",
#     [ 7] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1065/thumb_Advanced-Topics-In-Excel.jpg",
#     [ 8] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1416/thumb_Recruiting-User-Research-Participants-Through-Social-Media.jpg",
#     [ 9] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/181/thumb_Intro-To-Google-Analytics.jpg",
#     [10] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1284/thumb_Storytelling-for-Entrepreneurs-Presentations-to-Elevator-Pitches.jpg",
#     [11] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1183/thumb_Info-Session-Social-Product-Design-With-Facebook.jpg",
#     [12] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1463/thumb_Education-Programs-Open-House.jpg",
#     [13] "//d3o09jpaxs6yh2.cloudfront.net/production/assets/front-row-papercraft-grey-f5486cba15439af8351143e1d00cdb39.jpg",
#     [14] "https://ga-topgun.s3.amazonaws.com/uploads/production/video/thumbnail/139/large_burrows-scrum-retro.jpg",
#     [15] "https://ga-topgun.s3.amazonaws.com/uploads/production/video/thumbnail/131/large_george-scribner-brand-wrap-up.Still001.jpg",
#     [16] "https://ga-topgun.s3.amazonaws.com/uploads/production/video/thumbnail/123/large_scordato-Business_development_1000x625.jpg",
#     [17] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1434/thumb_Logo-Design-For-Non-Designers-Livestream.jpg",
#     [18] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1257/thumb_Branding.jpeg",
#     [19] "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1357/thumb_Agile-Retrospectives-Online.jpg"
# ]

end
