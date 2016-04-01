class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.references :unit, index: true
      t.decimal :conversion
      t.references :component, index: true
      t.references :ingredient, index: true
      t.references :stock, index: true
      t.references :order_item, index: true

      t.timestamps
    end
  end
end
