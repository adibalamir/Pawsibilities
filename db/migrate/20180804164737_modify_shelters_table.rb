class ModifySheltersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :owner_type, :string
    add_column :shelters, :password_digest, :string
  end
end
