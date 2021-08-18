class AddPurchaseContractToDetailSale < ActiveRecord::Migration[5.2]
  def change
    add_column :detail_sales, :purchase_contract, :string
  end
end
