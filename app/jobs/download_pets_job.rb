class DownloadPetsJob < ApplicationJob
  queue_as :default

  # after_perform do |job|
  #   Pet.destroy(Pet.where(shelter_id: "ON217"))
  # end

  def perform(*args)
    # call petfinder
    response = HTTParty.get('http://api.petfinder.com/pet.find?key=49b6e87785e4e2811b2d5a9668eee5af&format=xml&location=ontario&count=1000')
    # parse xml
    xml_doc = Nokogiri::XML(response.body)

    # create hash of attributes
    xml_doc.xpath('//pet').each do |pet_xml|
      pet_attributes = {
        petfinder_id: pet_xml.xpath('id/text()').to_s.to_i,
        city: pet_xml.xpath('contact/city/text()').to_s,
        animal_type: pet_xml.xpath('animal/text()').to_s,
        breed: pet_xml.xpath('breeds/breed/text()')[0].to_s,
        name: pet_xml.xpath('name/text()').to_s,
        gender: pet_xml.xpath('sex/text()').to_s,
        size: pet_xml.xpath('size/text()').to_s,
        age: pet_xml.xpath('age/text()').to_s,
        status: pet_xml.xpath('status/text()').to_s,
        photo: pet_xml.xpath('media/photos/photo[3]/text()').to_s,
        description: pet_xml.xpath('description/text()').to_s,
        shelter_id: pet_xml.xpath('shelterId/text()').to_s
      }
      # save in DB
      #Pet.find_or_create_by!(petfinder_id: pet_id) do |pet|
      #  pet.update(pet_attributes)
      #end
      Pet.create!(pet_attributes) unless (Pet.exists?(petfinder_id: pet_attributes[:petfinder_id]) || !Shelter.exists?(shelter_id: pet_attributes[:shelter_id]))
    end
  end
end
