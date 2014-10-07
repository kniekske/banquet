class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :date
      t.string :status
      t.integer :item_id
    end
  end
end
