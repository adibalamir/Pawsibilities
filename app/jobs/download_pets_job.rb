class DownloadPetsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # call petfinder
    response = HTTParty.get('http://api.petfinder.com/pet.find?key=49b6e87785e4e2811b2d5a9668eee5af&format=xml&animal=dog&location=toronto,on')
    # parse xml
    xml_doc = Nokogiri::XML(response.body)

    # create hash of attributes
    xml_doc.xpath('//pet').each do |pet_xml|
      pet_attributes = {
        petfinder_id: pet_xml.xpath('id/text()').to_s.to_i,
        name: pet_xml.xpath('name/text()').to_s,
        breed: pet_xml.xpath('breeds/breed/text()')[0].to_s
      }
      # save in DB
      #Pet.find_or_create_by!(petfinder_id: pet_id) do |pet|
      #  pet.update(pet_attributes)
      #end
      Pet.create!(pet_attributes) unless Pet.exists?(petfinder_id: pet_attributes[:petfinder_id])
    end
  end
end
