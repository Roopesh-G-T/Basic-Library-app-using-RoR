class CreateMylibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :mylibraries do |t|
      t.string :author
      t.string :name
      t.string :category
      t.integer :price
      t.integer :isbn
      t.integer :edition

      t.timestamps
    end
  end
end
