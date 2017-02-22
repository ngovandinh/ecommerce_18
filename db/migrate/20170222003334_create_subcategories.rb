class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.references :category, index: true, foreign_key: true
      t.string :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
