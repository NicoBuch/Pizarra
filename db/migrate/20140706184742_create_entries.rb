class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :transaction_date
      t.string :transaction_type
      t.string :my_coin
      t.decimal :my_amount
      t.decimal :unity_price
      t.string :your_coin
      t.decimal :your_amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
