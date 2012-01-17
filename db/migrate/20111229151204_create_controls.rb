class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.integer :orderSizeLimit
      t.integer :longPositionLimit
      t.integer :shortPositionLimit

      t.timestamps
    end
  end
end
