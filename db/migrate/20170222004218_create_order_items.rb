class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quatity
      t.decimal :price
      t.integer :status
      t.string :information

      t.timestamps null: false
    end
  end
end
