class DownloadSheltersJob < ApplicationJob
  queue_as :default

  def perform(*args)
    response = HTTParty.get('http://api.petfinder.com/shelter.find?key=49b6e87785e4e2811b2d5a9668eee5af&format=xml&location=ontario&count=450')
    xml_doc = Nokogiri::XML(response.body)

    xml_doc.xpath('//shelter').each do |shelter_xml|
      shelter_attributes = {
        shelter_id: shelter_xml.xpath('id/text()').to_s,
        name: shelter_xml.xpath('name/text()').to_s,
        email: shelter_xml.xpath('email/text()').to_s,
        phone: shelter_xml.xpath('phone/text()').to_s,
        address: shelter_xml.xpath('address1/text()').to_s,
        latitude: shelter_xml.xpath('latitude/text()').to_s.to_f,
        longitude: shelter_xml.xpath('longitude/text()').to_s.to_f,
        province: shelter_xml.xpath('state/text()').to_s,
        password: "a",
        owner_type: "shelter"
      }

      Shelter.create!(shelter_attributes) unless Shelter.exists?(shelter_id: shelter_attributes[:shelter_id])
    end
  end
end

