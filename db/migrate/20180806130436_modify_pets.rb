class ModifyPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :cw_photo, :string
  end
end
