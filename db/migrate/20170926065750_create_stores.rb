class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.string :number
      t.string :time
      t.string :image
      t.integer :num_id

      t.timestamps null: false
    end
  end
end
