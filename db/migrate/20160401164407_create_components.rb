class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.decimal :quantity
      t.references :stock, index: true

      t.timestamps
    end
  end
end
