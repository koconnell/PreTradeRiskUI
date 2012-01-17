class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :accountID
      t.string :localCurrency

      t.timestamps
    end
  end
end
