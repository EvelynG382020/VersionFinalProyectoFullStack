class AddTransactionToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :transaction, :integer, default: 0
  end
end
