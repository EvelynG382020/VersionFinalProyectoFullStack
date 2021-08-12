class CreateDetailSales < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_sales do |t|
      t.text :detail
      t.integer :caratula
      t.string :url
      t.integer :value
      t.string :contract
      t.references :buyer, foreign_key: true

      t.timestamps
    end
  end
end
