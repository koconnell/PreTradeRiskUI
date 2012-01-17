class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :instrumentID
      t.string :accountID
      t.string :side
      t.integer :quantity
      t.decimal :price
      t.string :venue

      t.timestamps
    end
  end
end
