class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :subcategory, index: true, foreign_key: true
      t.string :name
      t.float :rate
      t.string :information
      t.string :image
      t.integer :number
      t.decimal :price

      t.timestamps null: false
    end
  end
end
