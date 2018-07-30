class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.bigint :petfinder_id, index: true, unique: true
      t.string :city
      t.string :animal_type
      t.string :breed
      t.string :name
      t.string :gender
      t.string :size
      t.string :age
      t.string :status
      t.string :photo
      t.string :description
      t.string :shelter_id

      t.timestamps
    end
    add_foreign_key :pets, :shelters, column: :shelter_id, primary_key: :shelter_id
  end
end
