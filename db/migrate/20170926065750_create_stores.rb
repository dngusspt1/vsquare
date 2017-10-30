class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name , unique: true
      t.string :location , unique: true
      t.string :number , unique: true
      t.string :time , unique: true
      t.string :image , unique: true
      t.integer :num_id , unique: true

      t.timestamps null: false
    end
  end
end
