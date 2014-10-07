class Ingredient < ActiveRecord::Migration
 def change
    create_table :ingredients do |t|
      t.integer :item_id
      t.string :item_name
      
      t.timestamps
    end
  end
end
