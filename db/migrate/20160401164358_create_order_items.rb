class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.string :status
      t.string :packaging
      t.references :order, index: true
      t.references :stock_type, index: true

      t.timestamps
    end
  end
end
