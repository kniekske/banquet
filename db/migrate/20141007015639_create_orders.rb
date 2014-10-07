class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_name
      t.integer :item_id
      t.datetime :order_date
      t.text :status

      t.timestamps
    end
  end
end
