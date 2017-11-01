class CreateFinds < ActiveRecord::Migration
  def change
    create_table :finds do |t|
      t.string :menu , null: false
      t.string :menu_price
      
      t.belongs_to :store
      
      t.timestamps

    end
  end
end
