require 'net/http'
require 'nokogiri'

module EarthTools
  def timezone(lat, long)
    parse_localtime get_raw_xml(lat, long)
  end

  private

  def get_raw_xml(lat, long)
    url = URI.parse("http://www.earthtools.org/timezone-1.1/#{lat}/#{long}")
    request = Net::HTTP::Get.new(url.path)
    response = Net::HTTP.start(url.host, url.port) do |http|
      http.request(request)
    end
    response.body
  end

  def parse_localtime(xml)
    xml = Nokogiri::XML::Document.parse xml
    xml.at_xpath('//localtime').children[0].content
  end
end