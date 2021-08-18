class AddInscriptionToDetailSale < ActiveRecord::Migration[5.2]
  def change
    add_column :detail_sales, :inscription, :string
  end
end
