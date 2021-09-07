class AddEndToDetailSale < ActiveRecord::Migration[5.2]
  def change
    add_column :detail_sales, :end, :date
  end
end
