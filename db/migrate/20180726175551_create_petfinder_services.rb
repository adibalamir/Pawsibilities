class CreatePetfinderServices < ActiveRecord::Migration[5.2]
  def change
    create_table :petfinder_services do |t|

      t.timestamps
    end
  end
end
