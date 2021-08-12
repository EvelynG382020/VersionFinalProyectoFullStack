class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :status
      t.string :detail
      t.string :kind
      t.string :adress
      t.integer :rol
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
