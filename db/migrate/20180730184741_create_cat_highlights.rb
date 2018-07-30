class CreateCatHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_highlights do |t|
      t.string :breed
      t.string :highlights
      t.timestamps
    end
  end
end
