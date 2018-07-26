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

      t.timestamps
    end
  end
end
