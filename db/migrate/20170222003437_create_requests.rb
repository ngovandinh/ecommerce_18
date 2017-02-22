class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :user, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true
      t.string :name
      t.integer :number
      t.integer :status
      t.string :information

      t.timestamps null: false
    end
  end
end
