class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :address
      t.string :phone
      t.string :status
      t.decimal :total

      t.timestamps null: false
    end
  end
end
