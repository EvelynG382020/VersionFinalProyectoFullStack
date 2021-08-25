class FixColumnNameToProperty < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :transaction, :transaction_type
  end
 
end
