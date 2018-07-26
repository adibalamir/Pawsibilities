class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.bigint :petfinder_id, index: true, unique: true

      t.timestamps
    end
  end
end
