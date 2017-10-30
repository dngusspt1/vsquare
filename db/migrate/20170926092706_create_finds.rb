class CreateFinds < ActiveRecord::Migration
  def change
    create_table :finds do |t|
      t.integer :num_id, unique: true
      t.string :name , unique: true
      t.string :price , unique: true
      t.references :store , unique: true

      t.timestamps null: false
    end
  end
end
