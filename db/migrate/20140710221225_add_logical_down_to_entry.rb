class AddLogicalDownToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :logical_down, :boolean, default: true
  end
end
