class RemoveYourAmountFromEntry < ActiveRecord::Migration
  def change
    remove_column :entries, :your_amount, :string
  end
end
