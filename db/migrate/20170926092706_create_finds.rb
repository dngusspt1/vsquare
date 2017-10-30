class CreateFinds < ActiveRecord::Migration
  def change
    create_table :finds do |t|
      t.integer :num_id
      t.string :name
      t.string :price
      t.references :store

      t.timestamps null: false
    end
  end
end
