class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :activity_type
      t.integer :activity_id

      t.timestamps null: false
    end
  end
end
