class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :shelter_id, index: true, unique: true
      t.string :email
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :province

      t.timestamps
    end
  end
end
