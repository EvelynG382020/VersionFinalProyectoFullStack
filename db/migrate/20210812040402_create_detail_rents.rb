class CreateDetailRents < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_rents do |t|
      t.text :detail
      t.integer :value
      t.string :contract
      t.references :renter, foreign_key: true

      t.timestamps
    end
  end
end
