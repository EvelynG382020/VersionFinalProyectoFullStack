class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :phone
      t.integer :rut
      t.string :mail

      t.timestamps
    end
  end
end
