class ChangeTypePurchaseContract < ActiveRecord::Migration[5.2]
  def up 
    change_table :detail_sales do |t|
      t.change :purchase_contract, "integer USING CAST(purchase_contract AS integer)"
      t.change :inscription, "integer USING CAST(inscription AS integer)"
      t.change :contract, "integer USING CAST(contract AS integer)"
      t.change :purchase_contract, :integer, default: 0
      t.change :inscription, :integer, default: 0
      t.change :contract, :integer, default: 0
    end
  end

  def down
    change_table :detail_sales do |t|
      t.change :purchase_contract, :string
      t.change :inscription, :string
      t.change :contract, :string
    end
  end
end
