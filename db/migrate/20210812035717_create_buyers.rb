class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :name
      t.integer :phone
      t.integer :rut
      t.string :mail
      t.string :detail
      t.references :owner, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
